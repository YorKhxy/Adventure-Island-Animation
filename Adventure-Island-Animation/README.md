# Adventure Island Animation

儿童原创小说《初入冒险岛》的动画制作工程资料库。

## 目录结构

- `00-global/`：全局设定、角色圣经、世界观和风格规则。
- `01-chapters/`：每一章的原文整理、改编脚本、分镜、提示词、配音字幕。
- `99-templates/`：后续章节复用模板。

## 使用规则

1. 全局角色设定只放在 `00-global/`，不要散落在每章里。
2. 每一章新建一个 `chapter-XX-title/` 文件夹。
3. 每章至少包含：`source-notes.md`、`script.md`、`storyboard.md`、`visual-prompts.md`、`voice-subtitles.md`。
4. 如果用户修正角色名、能力、亲属关系，先更新 `00-global/character-bible.md`，再同步影响章节。
5. 不确认的信息标记 `[待确认]`，不要凭空补设定。
6. active 目录只保留最终使用版本；候选图、旧提示词、旧关键图、旧视频、过程审查和临时产物一律归档到 `98-archive/`。
7. 最终文件名使用稳定名，不带 `v01/v02/candidate/draft/old`：例如 `character-haohao-turnaround.png`、`ep01_seg01_arrival_keyframe.png`、`ep01_seg01_arrival_kling_prompt.md`。
8. 新内容生产时可先放临时工作区或归档区，用户确认最终版后才移动到 active 目录；未确认版本不得留在 active 生产路径。
