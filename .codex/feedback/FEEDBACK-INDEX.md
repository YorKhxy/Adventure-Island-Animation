# Feedback Index

> 经验教训索引。新建或更新 feedback 文件后，同步更新此索引。
> 格式：每条一行，`- [标题](文件名.md) — 一句话描述`
> 模板：templates/feedback-topic-template.md

- [角色硬设定变更必须全项目同步](character-hard-setting-changes-require-global-sync.md) — 用户补充角色硬设定后，必须同步更新全项目角色圣经、提示词、剧情文本、目录和审查规则。
- [角色能力职能不能互相抢招数](character-ability-roles-must-not-overlap.md) — 角色能力设计不能抢占其他角色的核心招数，且相近属性角色必须先设定硬区分锚点。
- [角色风格选择要同步更新系列基准](character-style-selection-updates-series-baseline.md) — 用户选中某张角色图的画面风格时，应同步更新全系列角色风格基准和已生成资产状态。
- [怪物角色要按剧情阶段区分凶萌状态](monster-design-needs-story-phase-split.md) — 有开场冲突和后期感化的怪物，不能默认做成萌宠，必须拆分开场威胁形态和感化后萌化形态。
- [动漫短剧边界不要降级成漫画短剧](anime-not-comic-boundary.md) — 用户明确纠正“漫画短剧”不是目标，需求应按动漫短剧工作流处理。
- [儿童原创改编不要过度软化冲突](child-story-conflict-preservation.md) — 儿童原创小说改编时不能过度软化冲突，应保留打败怪物后理解动机的剧情。
- [儿童原创改编不要凭空添加角色名](do-not-invent-child-story-names.md) — 儿童原创小说改编时不能凭空添加或确认角色名，必须以原稿和用户确认为准。
- [可灵视频提示词必须锁定角色动作差异](kling-prompts-need-action-differentiation.md) — 视频分段关键图和可灵提示词必须提前锁定角色动作差异，不能让同屏角色同步站桩或重复抬手。
- [可灵提示词必须走官方文档 Skill](kling-official-doc-skill-required.md) — 生成可灵AI提示词时必须先使用基于官方文档提炼的 kling-prompt-builder Skill，而不是凭通用视频提示词经验输出。
- [Active 资产只保留最终版](active-assets-final-only.md) — 动漫项目 active 目录只能保留最终使用资产，候选图、旧版本、过程提示词和临时产物必须归档。
- [不要用 apply_patch 处理二进制资产](do-not-move-binary-with-apply-patch.md) — 图片、音频、视频等二进制资产不能用 apply_patch 移动或编辑，必须用文件系统命令复制/移动并验证可解码。
- [图片资产局部瑕疵只修问题区域](fix-only-bad-region-in-approved-image-assets.md) — 已被用户认可的图片资产出现局部瑕疵时，只修问题区域，不要整张重做。
- [关键图构图修订应保留已认可布局](keyframe-composition-revisions-should-preserve-approved-layout.md) — 用户只要求拉远或微调时，保留原图人物布局和叙事构图，不要重做成另一张图。
- [可灵字幕指视频同步字幕而不是关键图加字](kling-subtitles-mean-video-sync-not-keyframe-text.md) — 用户要求字幕时，应在可灵视频提示词中写音画同步字幕，不要把字幕画进关键图。
