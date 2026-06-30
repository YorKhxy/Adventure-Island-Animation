#!/bin/bash
# Codex Hook: UserPromptSubmit
# 检测用户 prompt 中是否包含修正/反馈信号
# 关键词对齐 feedback-writer SKILL.md 观察维度第 1 条"用户修正"的信号定义

INPUT=$(cat)

# Codex UserPromptSubmit 的 prompt 字段优先尝试，兼容旧 schema
PROMPT=$(echo "$INPUT" | jq -r '.prompt // .user_prompt // empty' 2>/dev/null)

if [ -z "$PROMPT" ]; then
  exit 0
fi

# 修正信号：用户指出 AI 做错了、漏了、忘了
# 不满信号：用户表达愤怒、质疑、强调重复
# 改进信号：用户提出应该怎么做、要求改变行为
if echo "$PROMPT" | grep -qE "不是这样|别这样做|你搞错|搞错了|你错了|不对|不应该|你漏了|你忘了|改一下|不合理|你理解错|我说的不是|你确定|到底在|为什么没|没有执行|没有生效|你又忘|强调了|说过了|提醒过|怎么还|一直在|每次都|我不是让你|你先.*看|再说一遍|你到底|什么意思|能不能|不要再|别再|停下|不用管|先不要"; then
  cat <<'EOF'
{"systemMessage": "检测到用户修正信号。请在处理完用户请求后，进入 feedback-observer 内联角色（读取 .codex/agents/feedback-observer.md + .codex/skills/feedback-writer/SKILL.md），记录这条反馈到 .codex/feedback/ 目录。"}
EOF
fi

exit 0
