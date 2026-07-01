# 视觉提示词定稿前必须使用审美和分镜 Agent

## Context

用户在 SEG01 可灵视频提示词多轮修订后指出：特效少、角色动作生硬，并质疑资深美术类 agent 和 skills 是否只是摆设。前几轮修改主要由主 Agent 直接在原提示词上补丁式增加动作和特效，没有先按 aesthetic-director、animation-aesthetic-director、shot-visual-director 的方法重构镜头目标、运动层次和视觉峰值，导致产出低级。

## Lesson

动漫短剧可灵提示词不能只靠主 Agent 临场补词。视觉提示词定稿前，必须先进入审美/动画/分镜角色思维：明确镜头目的、视觉焦点、明暗关系、角色动作过程、镜头运动、场景运动和节奏峰值。否则会变成“漂亮静态图轻微动一下”，角色站桩，特效堆词但没有注意力引导。

## Rule

- 生成或大改动漫视频提示词前，必须 read 对应 agent/skill：`shot-visual-director` + `anime-shot-designer`，需要审美问题时加 `aesthetic-director` 或 `animation-aesthetic-director`。
- 提示词必须包含：导演目标、镜头节拍、主体运动、镜头运动、场景/环境运动、视觉峰值和负面约束。
- 不接受只写“更生动、更炫、更丰富特效”这种空话；必须写成可执行动作和分秒节奏。
- 如果用户指出画面 low、生硬、不吸引眼球，要先重构分镜，不要只在原提示词上补几个形容词。
