#!/bin/bash
# Codex Hook: SessionStart (startup|resume)
# 检查 FEEDBACK-INDEX.md 是否有需要处理的 feedback
# 有条目 → 通过 systemMessage 提醒主 Agent 启动 evolution-runner 流程

# Codex 把 cwd 设为 session 工作目录，stdin 也带 cwd
INPUT=$(cat 2>/dev/null || echo "{}")
CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)
[ -z "$CWD" ] && CWD="$(pwd)"

FEEDBACK_INDEX="$CWD/.codex/feedback/FEEDBACK-INDEX.md"

if [ ! -f "$FEEDBACK_INDEX" ]; then
  exit 0
fi

COUNT=$(grep -c "^- \[" "$FEEDBACK_INDEX" 2>/dev/null)
COUNT=${COUNT:-0}
COUNT=$(echo "$COUNT" | tr -d '[:space:]')

if [ "$COUNT" -gt 0 ] 2>/dev/null; then
  # 通过 systemMessage 透出，比直接 echo 更稳
  printf '{"systemMessage": "📋 项目有 %s 条 feedback 记录。建议进入 evolution-runner 内联角色检查是否有进化建议。"}\n' "$COUNT"
fi

exit 0
