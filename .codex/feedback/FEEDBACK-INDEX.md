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
- [植被小点噪声必须控制](vegetation-speckle-noise-must-be-controlled.md) — 动漫关键图里植被和背景不能布满小黄点、小白点、假露珠、萤火粒子或随机闪光。
- [图片资产局部瑕疵只修问题区域](fix-only-bad-region-in-approved-image-assets.md) — 已被用户认可的图片资产出现局部瑕疵时，只修问题区域，不要整张重做。
- [背景修图必须锁定人物区域](background-edits-must-lock-characters.md) — 用户要求只处理背景、植物噪声、色调或微光时，必须锁定人物区域，不得改动角色姿势、肢体和道具。
- [关键图构图修订应保留已认可布局](keyframe-composition-revisions-should-preserve-approved-layout.md) — 用户只要求拉远或微调时，保留原图人物布局和叙事构图，不要重做成另一张图。
- [可灵字幕指视频同步字幕而不是关键图加字](kling-subtitles-mean-video-sync-not-keyframe-text.md) — 用户要求字幕时，应在可灵视频提示词中写音画同步字幕，不要把字幕画进关键图。
- [可灵发光效果不足要控制环境曝光对比](kling-glow-contrast-needs-environment-exposure-control.md) — 发光物不明显时，应轻微压低环境曝光建立对比，而不是只堆亮度。
- [视觉提示词定稿前必须使用审美和分镜 Agent](aesthetic-agents-must-be-used-before-visual-prompt-finalization.md) — 动漫视频提示词不能补丁式堆词，必须先用审美/动画/分镜规则重构镜头和运动层次。
- [可灵复杂群戏优先使用自定义分镜](kling-complex-scenes-need-custom-shot-list.md) — 多角色和特效递进段落应拆成 3-5 个清晰 shot，而不是只塞一个大提示词框。
- [参考素材用途必须明确分工](reference-media-roles-must-be-explicit.md) — 首帧、主体参考、风格参考和动作文本必须各司其职，不能含混写“都参考”。
- [可灵导入说明必须按界面顺序给可复制文本](kling-import-instructions-must-be-copy-ready.md) — 用户问导入可灵时，直接给按界面顺序排列的复制文本，不只给文件行号。
- [即梦视频交付必须直接给可复制操作和提示词](jimeng-video-output-must-be-copy-ready.md) — 用户问即梦导入或生成视频时，必须按即梦界面顺序给操作和完整可复制提示词。
- [Skill 和 Agent 路由必须先做意图门禁](skill-agent-routing-must-be-preflighted.md) — 每次处理请求前先分类，命中 Skill/Agent 时必须先读取对应文件，不能凭感觉直接答。
- [调试和测试临时产物用完必须清理](debug-artifacts-must-be-cleaned-after-use.md) — Playwright、浏览器、ffmpeg、日志和截图等临时产物用完必须删除或明确归档，不能污染项目根目录。
- [动漫视频提示词必须去AI味](anime-video-prompts-must-avoid-ai-feel.md) — 动漫视频提示词必须明确要求自然动作、丰富特效、自然转场和去AI味，不能只让关键图轻微动。
- [动漫工作流必须执行制作合理性审美落地闭环](anime-workflow-must-run-production-aesthetic-delivery-loop.md) — 动漫制作或审查请求必须主动执行制作、合理性、审美、落地闭环，不能等用户点名才调用审查技能。
- [动漫制作必须检查故事空间连续性](anime-story-logic-and-spatial-continuity-must-be-checked.md) — 动漫分镜、关键图和视频提示词必须检查故事合理性与空间连续性，角色或怪物不能从不合理的小场景元素里凭空出现。
- [动漫闭环需要审美前合理性审查](anime-workflow-needs-logic-review-agent-before-aesthetic.md) — 动漫制作闭环必须在审美前加入独立合理性审查 Agent/Skill，不能把故事逻辑和空间连续性混进审美里草草带过。
