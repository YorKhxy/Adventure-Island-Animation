#!/bin/bash
# Codex Hook: PostToolUse (matcher=^Bash$)
# git commit 成功后自动 push。命令过滤在脚本里做（matcher 没法过滤命令参数）。

INPUT=$(cat)

CMD=$(echo "$INPUT" | jq -r '.tool_input.command // .tool_input.input.command // empty' 2>/dev/null)

case "$CMD" in
  "git commit"*|*"&& git commit"*|*"; git commit"*) ;;
  *) exit 0 ;;
esac

# 兼容 Codex / Claude Code 多种退出码字段名
EXIT_CODE=$(echo "$INPUT" | jq -r '.tool_response.exit_code // .tool_exit_code // .exit_code // "1"' 2>/dev/null)

if [ "$EXIT_CODE" = "0" ]; then
  CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)
  [ -n "$CWD" ] && cd "$CWD"
  git push 2>&1 || true
fi

exit 0
