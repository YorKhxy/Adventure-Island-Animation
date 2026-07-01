---
type: feedback
description: 动漫制作闭环必须在审美前加入独立合理性审查 Agent/Skill，不能把故事逻辑和空间连续性混进审美里草草带过。
created: 2026-07-01
updated: 2026-07-01
occurrences: 1
graduated: false
source_skill: anime-workflow-orchestrator / anime-logic-continuity-review
scores:
  accuracy: 3
  coverage: 2
  efficiency: 3
  satisfaction: 3
  evidence: "用户明确指出当前故事合理性缺少独立审查环节，要求参考网上内容新增一套 agent 和 skills 并加入制作闭环。"
---

# 动漫闭环需要审美前合理性审查

**问题描述**：原动漫工作流只有制作、审美、落地，缺少独立的故事合理性和空间连续性审查。这样容易把“章鱼从小水洼出现”这类硬逻辑问题遗漏，或者误当作审美问题处理。

**触发场景**：用户指出当前故事合理性也需要主动考虑，并要求参考网上内容新增 agent 和 skills，加到制作闭环中。

**教训/建议**：动漫制作、新篇章、关键图、分镜、可灵/即梦提示词和成片审查时，必须在审美前调用独立的 anime-logic-continuity-review / story-logic-reviewer。审查范围包括故事因果、空间尺度、角色动机、场景出入口、镜头衔接和平台误生成风险。合理性不过关时必须先回写修复，不允许用审美定稿掩盖逻辑漏洞。
