---
type: feedback
description: 图片、音频、视频等二进制资产不能用 apply_patch 移动或编辑，必须用文件系统命令复制/移动并验证可解码。
created: 2026-06-30
updated: 2026-06-30
occurrences: 1
graduated: false
source_skill: N/A
---

# 不要用 apply_patch 处理二进制资产

**问题描述**：整理动画资产时用 `apply_patch` 移动 PNG 图片，导致二进制内容被文本化处理，PNG 内大量字节变成 `EF BF BD` 替换字符。结果本地预览工具勉强能显示，但可灵和 ffmpeg 无法识别，用户反馈“首帧图打不开”。

**触发场景**：归档或重命名图片、音频、视频、PDF 等二进制文件时，如果用文本补丁工具处理，可能破坏文件内容。尤其 PNG/JPG 这类生产资产被破坏后，会直接阻塞上传和生成流程。

**教训/建议**：以后任何二进制资产移动、复制、重命名、归档，都必须使用文件系统命令或专用工具，不得用 `apply_patch`。移动后必须做可解码验证：图片用 `read` 和 `ffmpeg -v error -i <file> -f null -`，视频用 ffmpeg probe，音频用 ffmpeg probe。文本文档才允许用 `apply_patch`。
