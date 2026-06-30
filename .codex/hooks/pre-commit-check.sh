#!/bin/bash
# Codex Hook: PreToolUse (matcher=^Bash$)
# Claude Code 用 `if: "Bash(git commit*)"` 过滤命令；
# Codex matcher 是纯正则，只能匹配工具名，所以命令过滤在脚本里做。
#
# 流程：读 stdin JSON 拿命令，是 git commit 才执行 tsc 检查；
# tsc 失败 exit 2 阻止 commit，其它情况放行。

INPUT=$(cat)

CMD=$(echo "$INPUT" | jq -r '.tool_input.command // .tool_input.input.command // empty' 2>/dev/null)

# 不是 git commit → 放行
case "$CMD" in
  "git commit"*|*"&& git commit"*|*"; git commit"*) ;;
  *) exit 0 ;;
esac

CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)
[ -z "$CWD" ] && CWD="$(pwd)"

TSCONFIG=$(find "$CWD" -maxdepth 3 -name "tsconfig.json" -not -path "*/node_modules/*" -not -path "*/.next/*" 2>/dev/null | head -1)

if [ -z "$TSCONFIG" ]; then
  exit 0
fi

PROJECT_CODE=$(dirname "$TSCONFIG")
cd "$PROJECT_CODE" || exit 0

TSC_OUTPUT=$(npx --no-install tsc --noEmit 2>&1 || npx tsc --noEmit 2>&1)
TSC_EXIT=$?

if [ $TSC_EXIT -ne 0 ]; then
  echo "编译检查未通过，commit 被阻止。请修复以下错误：" >&2
  echo "$TSC_OUTPUT" >&2
  exit 2
fi

exit 0
