#!/bin/bash
# Codex Hook: Stop
# 状态文件 .codex/.needs-review：needs_review = 阻止结束，clean = 放行并删除文件，不存在 = 放行

INPUT=$(cat 2>/dev/null || echo "{}")
CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)
[ -z "$CWD" ] && CWD="$(pwd)"

STATE_FILE="$CWD/.codex/.needs-review"

if [ ! -f "$STATE_FILE" ]; then
  exit 0
fi

STATE=$(cat "$STATE_FILE" 2>/dev/null | tr -d '[:space:]')

case "$STATE" in
  "needs_review")
    # Codex Stop hook 用 continue:false + stopReason 阻止结束
    cat <<'EOF'
{"continue": false, "stopReason": "代码已修改但未进行 code review。请进入 code-reviewer 内联角色（读取 .codex/agents/code-reviewer.md + .codex/skills/code-review/SKILL.md）做两阶段审查后再结束。"}
EOF
    exit 0
    ;;
  "clean")
    rm -f "$STATE_FILE"
    exit 0
    ;;
  *)
    exit 0
    ;;
esac
