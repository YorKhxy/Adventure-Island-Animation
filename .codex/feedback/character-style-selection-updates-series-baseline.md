---
type: feedback
description: 用户选中某张角色图的画面风格时，应同步更新全系列角色风格基准和已生成资产状态。
created: 2026-06-29
updated: 2026-06-29
occurrences: 1
graduated: false
source_skill: imagegen
---

# 角色风格选择要同步更新系列基准

**问题描述**：用户明确表示喜欢沐沐 Candidate A 的风格，并要求浩浩也改成这个风格。这不是单张图微调，而是整个角色系列的视觉基准调整。

**触发场景**：角色设定图生成流程中，AI 已经为浩浩生成了 final、三视图、表情表、动作表，又为沐沐生成多个候选。用户选中沐沐某张图作为喜欢的风格，并要求其他角色对齐。

**教训/建议**：以后用户选中某张角色图的风格时，必须立即判断是否影响全系列风格。若影响，应同步更新 style-preferences、相关角色 final、production-notes，并把旧风格三视图/表情表/动作表标记为 OLD_STYLE_REFERENCE 或待重做，不能继续当正式生产资料使用。
