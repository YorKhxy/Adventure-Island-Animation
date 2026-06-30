#!/bin/bash
# Codex Hook: PostToolUse (matcher=^apply_patch$)
# apply_patch 改完代码文件后标记需要 review。
# Codex 的 apply_patch tool_input 形态多样，尽量在常见字段里拼出受影响的路径列表。

INPUT=$(cat)

CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)
[ -z "$CWD" ] && CWD="$(pwd)"

# 1) 直接给了 file_path（兼容 Claude Code 风格）
FILE_PATHS=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty' 2>/dev/null)

# 2) Codex apply_patch：尝试从 input.changes / input.files / input.patch 抽路径
if [ -z "$FILE_PATHS" ]; then
  FILE_PATHS=$(echo "$INPUT" | jq -r '
    [
      (.tool_input.changes // {} | keys[]?),
      (.tool_input.input.changes // {} | keys[]?),
      (.tool_input.files // [] | .[]?),
      (.tool_input.input.files // [] | .[]?)
    ] | join("\n")
  ' 2>/dev/null)
fi

# 3) 最后兜底：从 patch 文本里抓 *** Add/Update/Delete File: 行
if [ -z "$FILE_PATHS" ]; then
  PATCH=$(echo "$INPUT" | jq -r '.tool_input.patch // .tool_input.input.patch // empty' 2>/dev/null)
  if [ -n "$PATCH" ]; then
    FILE_PATHS=$(echo "$PATCH" | grep -E '^\*\*\* (Add|Update|Delete) File:' | sed -E 's/^\*\*\* (Add|Update|Delete) File:[[:space:]]*//')
  fi
fi

if [ -z "$FILE_PATHS" ]; then
  exit 0
fi

NEEDS_REVIEW=0
while IFS= read -r FP; do
  [ -z "$FP" ] && continue
  case "$FP" in
    *.md|*.txt|*.json|*.yaml|*.yml|*.toml|*.lock|*.log|*.env|*.env.*|*.gitignore|*.prettierrc|*.eslintrc)
      ;;
    *)
      NEEDS_REVIEW=1
      break
      ;;
  esac
done <<< "$FILE_PATHS"

if [ "$NEEDS_REVIEW" = "1" ]; then
  mkdir -p "$CWD/.codex"
  echo "needs_review" > "$CWD/.codex/.needs-review"
fi

exit 0
