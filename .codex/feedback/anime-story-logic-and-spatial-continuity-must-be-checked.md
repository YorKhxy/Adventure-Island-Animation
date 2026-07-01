---
type: feedback
description: 动漫分镜、关键图和视频提示词必须检查故事合理性与空间连续性，角色或怪物不能从不合理的小场景元素里凭空出现。
created: 2026-07-01
updated: 2026-07-01
occurrences: 1
graduated: false
source_skill: anime-workflow-orchestrator / anime-shot-designer / art-image-critique / kling-prompt-builder
scores:
  accuracy: 3
  coverage: 2
  efficiency: 3
  satisfaction: 3
  evidence: "用户指出章鱼从SEG01小水洼/浅水区域出场不合理，要求在制作和审查时主动考虑故事合理性。"
---

# 动漫制作必须检查故事空间连续性

**问题描述**：动漫短剧制作不能只看画面是否好看、提示词是否完整，还必须检查故事物理逻辑和空间连续性。像大型章鱼怪不能从前序关键图里一小摊浅水或反光水洼凭空出现，否则观众会觉得设定硬拗。

**触发场景**：用户指出SEG01关键图中的水面太小，不足以支撑章鱼从浅水区域出场，并要求重新生成SEG02关键图时同时考虑故事合理性。

**教训/建议**：以后制作新篇章、分镜、关键图或可灵/即梦提示词时，必须增加“故事合理性/空间连续性”检查：角色和怪物出场点是否在前序画面中被合理铺垫；场景尺度是否承载动作；小道具、小水面、小门洞不能承担超出尺度的剧情功能；如果不合理，先补场景结构或过渡镜头，再生成关键图和视频提示词。
