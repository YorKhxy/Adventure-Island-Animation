# Skill 和 Agent 路由必须先做意图门禁

## Context

用户要求检查工程里的所有 agent 和 skills，避免之后遇到需要调用技能或内联 agent 的场景却没有调用。

## Lesson

Codex CLI 不会自动发现 `.codex/skills/` 下的新 Skill，也没有原生 sub-agent。是否调用完全依赖 AGENTS.md 路由和主 Agent 的执行纪律。如果入口没有“先分类再读文件”的硬规则，就容易在平台提示词、审查、反馈记录等场景中直接回答，绕过 Skill。

## Rule

- 每次处理用户请求前先做意图分类，命中 Skill 或 Agent 触发条件时必须先读取对应文件。
- 需要内联 Agent 时，先读取 `.codex/agents/<name>.md`，再读取对应 `.codex/skills/<skill>/SKILL.md`。
- 新增 Skill 后必须同步更新 AGENTS.md 的文件结构、Skill 调用规则、工作流程入口和可用技能清单。
- 定期用目录盘点核对：所有 `uses_skill` 都必须存在对应 SKILL.md，所有直接触发 Skill 都必须在 AGENTS.md 注册。
