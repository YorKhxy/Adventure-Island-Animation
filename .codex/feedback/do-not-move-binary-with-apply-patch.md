---
type: feedback
description: 图片、音频、视频等二进制资产不能用 apply_patch 处理；active 图片的移动、覆盖、归档、替换必须先获得用户逐次明确授权。
created: 2026-06-30
updated: 2026-07-01
occurrences: 2
graduated: false
source_skill: N/A
---

# 不要用 apply_patch 处理二进制资产

**问题描述**：整理动画资产时用 `apply_patch` 移动 PNG 图片，导致二进制内容被文本化处理，PNG 内大量字节变成 `EF BF BD` 替换字符。结果本地预览工具勉强能显示，但可灵和 ffmpeg 无法识别，用户反馈“首帧图打不开”。后续在 SEG01/SEG02 修图流程中，主 Agent 准备把新候选图归档/替换进 active，用户再次明确制止：“不要用二进制，上次你把我的图片搞坏了你不记得了吗”。这说明规则不能只限制 `apply_patch`，还要限制主动移动、覆盖、归档、替换 active 二进制图片。

**触发场景**：归档或重命名图片、音频、视频、PDF 等二进制文件时，如果用文本补丁工具处理，可能破坏文件内容。尤其 PNG/JPG 这类生产资产被破坏后，会直接阻塞上传和生成流程。即使用文件系统命令，active 生产图也不能由 Agent 自主替换；用户对图片资产完整性有明确风险偏好。

**教训/建议**：以后任何二进制资产移动、复制、重命名、归档，都不得用 `apply_patch`。更重要的是：对用户 active 生产图片，未经用户逐次明确授权，不主动移动、覆盖、归档、替换或删除；默认只改文本提示词、生成候选说明和交付手动操作步骤。若用户明确授权处理二进制，才使用文件系统命令或专用工具，并在操作后做可解码验证：图片用 `read` 和 `ffmpeg -v error -i <file> -f null -`，视频用 ffmpeg probe，音频用 ffmpeg probe。文本文档才允许用 `apply_patch`。
