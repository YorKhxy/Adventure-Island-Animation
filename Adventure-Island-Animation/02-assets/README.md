# Assets

动画素材生产目录。

## 目录规划

- `characters/`：角色最终参考图和正式三件套；每个角色必须单独建子目录。
- `chapter-01/`：第一章关键帧、场景图、视频片段、音频、字幕。
- `../98-archive/`：候选图、旧版本、过程提示词、旧审查记录和临时产物归档区。

## 命名规则

角色设定图：

```text
characters/[角色拼音]/character-[角色拼音]-final.png
characters/[角色拼音]/character-[角色拼音]-turnaround.png
characters/[角色拼音]/character-[角色拼音]-expression-sheet.png
characters/[角色拼音]/character-[角色拼音]-action-sheet.png
```

第一章镜头图：

```text
chapter-XX-title/segments/keyframes/epXX_segXX_name_keyframe.png
chapter-XX-title/segments/kling-prompts/epXX_segXX_name_kling_prompt.md
```

音频：

```text
ch01-voice-narration.wav
ch01-music.wav
ch01-sfx-[name].wav
```

## 使用规则

1. active 角色目录只保留最终使用文件：`final.png`、`turnaround.png`、`expression-sheet.png`、`action-sheet.png` 和必要 production notes。
2. 候选图、过程提示词、旧版本、旧审查记录不得留在 active 目录，必须移动到 `98-archive/`。
3. 所有分镜图必须引用 final 角色参考图。
4. 不要直接拿第一张生成图进分镜，先做审美审查；通过后才用稳定文件名进入 active。
5. final 图一旦选定，不要随便换，否则后续镜头全部重来。
6. 最终文件名不带版本号；版本历史只存在于 `98-archive/`。
