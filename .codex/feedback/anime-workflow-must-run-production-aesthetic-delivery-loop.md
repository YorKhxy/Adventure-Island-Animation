---
type: feedback
description: 动漫制作或审查请求必须主动执行制作、合理性、审美、落地闭环，不能等用户点名才调用审查技能。
created: 2026-07-01
updated: 2026-07-01
occurrences: 1
graduated: false
source_skill: anime-workflow-orchestrator / aesthetic-review-orchestrator / anime-production-review
scores:
  accuracy: 3
  coverage: 2
  efficiency: 3
  satisfaction: 2
  evidence: "用户明确纠正：不要每次等他要求才审查，制作新篇章或审查时必须主动按制作、审美、落地方式严格执行。"
---

# 动漫工作流必须执行制作合理性审美落地闭环

**问题描述**：处理动漫短剧制作、提示词、分镜或审查时，不能只完成用户点名的局部产物，更不能只交提示词或主观审查。用户要求每次制作新篇章或审查都主动执行“制作 -> 合理性 -> 审美 -> 落地”完整闭环。

**触发场景**：用户指出不要等他叫才审查，要求制作或审查新篇章时主动调用技能，并按制作、审美、落地方式严格执行，不要忽悠。

**教训/建议**：以后凡是动漫制作、新篇章、分镜、可灵/即梦提示词、成片预览或审查，都必须先产出制作内容，再调用 anime-logic-continuity-review 审查故事因果、空间尺度、角色动机和镜头衔接；合理性通过或回写修复后，再调用 aesthetic-review-orchestrator 及对象对应的 art/comic/animation 专项审查，并将问题回写到产物；最后输出平台可执行的导入步骤、复制文本、素材路径、命名、验收标准和失败重做条件。不得用“已考虑审美”代替实际审查证据。
