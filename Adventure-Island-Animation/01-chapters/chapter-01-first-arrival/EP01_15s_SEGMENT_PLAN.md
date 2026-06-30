# EP01 15s Segment Production Plan

## Purpose

可灵等视频工具按 15 秒片段生产更稳，所以第一集不再按 90 秒一次性生成，而是拆成 6 个 15 秒片段，分别生成后再后期合成。

本文件是 `script.md` 和 `storyboard.md` 的 15 秒生产版，不替代原脚本。

## Global Rules

- 总时长：90 秒。
- 分段：6 段，每段 15 秒。
- 生成方式：每段 1 张关键图 + 1 条可灵AI中文视频提示词 + 1 条 15 秒视频；可灵单次只生成 15 秒，所以严禁跨段塞剧情。
- 后期合成：按 `seg01` 到 `seg06` 顺序拼接，段间使用 0.3-0.5 秒软切或光效/墨云/泡泡转场。
- 每段只承载 1 个主剧情动作，不要把多个转折塞进同一段。
- 所有字幕、配音和视频片段必须按段号命名，避免素材混乱。
- 关键图中不要生成文字；可灵视频如开启字幕，只允许生成与配音同步的底部中文字幕，不允许门牌字、随机伪文字、水印或额外说明文字。

## Master Asset References

### Characters

- 浩浩：`../../02-assets/characters/haohao/character-haohao-final.png`
- 沐沐：`../../02-assets/characters/mumu/character-mumu-final.png`
- 钰钰：`../../02-assets/characters/yuyu/character-yuyu-final.png`
- 卉卉：`../../02-assets/characters/huihui/character-huihui-final.png`
- 骆骆：`../../02-assets/characters/luoluo/character-luoluo-final.png`
- 方方：`../../02-assets/characters/fangfang/character-fangfang-final.png`
- 章鱼怪开场形态：`../../02-assets/characters/octopus-monster/character-octopus-monster-opening-final.png`
- 章鱼怪感化后形态：`../../02-assets/characters/octopus-monster/character-octopus-monster-softened-final.png`

### Style Lock

- 柔亮童话国漫风。
- 暖奶油色光效，清澈水面，儿童动画安全。
- 角色比例必须保持儿童感：浩浩约 10 岁，其他孩子约 7 岁。
- 章鱼怪开场形态凶狠中性，感化后形态放松亲近，但仍不能女性向。

## Folder And Naming Rules

建议新增：

```text
01-chapters/chapter-01-first-arrival/segments/
├── keyframes/          # 只保留最终使用关键图
├── kling-prompts/      # 只保留最终使用可灵提示词
├── videos-raw/
├── audio/
├── subtitles/
└── final/
```

命名规则：

```text
keyframes/ep01_seg01_arrival_keyframe.png
kling-prompts/ep01_seg01_arrival_prompt.txt
videos-raw/ep01_seg01_arrival_kling.mp4
audio/ep01_seg01_arrival_voice.wav
subtitles/ep01_seg01_arrival.srt
final/ep01_full_90s.mp4
```

## 15s Segment Table

| 段号 | 时间 | 段名 | 剧情功能 | 对应原分镜 | 主参考资产 |
| --- | --- | --- | --- | --- | --- |
| SEG01 | 0-15s | arrival | 醒来 + 伙伴聚集 + 冒险岛入口出现 | 镜头 1-3 | 浩浩、沐沐、六人 final |
| SEG02 | 15-30s | powers_awaken | 六种魔法觉醒，建立角色能力 | 镜头 4-5 | 六人 final + 三件套 |
| SEG03 | 30-45s | octopus_appears | 章鱼怪开场形态冲出并挡路 | 镜头 6 | 章鱼 opening final |
| SEG04 | 45-60s | teamwork_defense | 孩子们配合防御，压住章鱼 | 镜头 7-8 | 六人 final、章鱼 opening final |
| SEG05 | 60-75s | truth_revealed | 章鱼倒下，肚子叫，沐沐发现它不是坏 | 镜头 9-10 | 沐沐、章鱼 opening/softened final |
| SEG06 | 75-90s | reconciliation | 分享食物，章鱼软化，第一关通过 | 镜头 11-12 | 六人 final、章鱼 softened final |

## Segment Details

### SEG01 - arrival

- 时间：0-15s
- 文件前缀：`ep01_seg01_arrival`
- 关键图状态：PASS，最终源图 `segments/keyframes/ep01_seg01_arrival_keyframe.png`，可灵上传优先用 `segments/keyframes/ep01_seg01_arrival_keyframe_upload.jpg`。
- 可灵上传包状态：READY，执行清单已写入 `segments/kling-prompts/ep01_seg01_arrival_kling_prompt.md`。
- 主剧情：浩浩醒来，发现自己和伙伴们来到陌生的冒险岛入口。
- 关键画面：草叶和天空从模糊到清晰，浩浩坐起，沐沐抓住他的衣角，其他伙伴在后方陆续出现，远处有发光的岛门。
- 镜头设计：近景醒来 → 中景兄妹 → 轻推到远处发光大门。
- 旁白/台词：
  - 旁白：浩浩一醒来，就发现自己来到了陌生的冒险岛。
  - 沐沐：哥哥，我有点害怕。
  - 浩浩：别怕，我会保护你。
- 字幕：浩浩醒来时，发现大家来到了陌生的冒险岛。
- 可灵AI中文提示词：已按 `kling-prompt-builder` 规范生成最终版 `segments/kling-prompts/ep01_seg01_arrival_kling_prompt.md`。
  ```text
  使用 `segments/keyframes/ep01_seg01_arrival_keyframe_upload.jpg` 作为可灵上传首帧。浩浩从草地上醒来并坐起，沐沐害怕地抓住浩浩衣角；镜头后拉显露后方四个伙伴和发光岛门。钰钰侧身指向远处发光大门，骆骆半蹲低头观察脚边水纹，卉卉轻触草叶或藤叶，方方小跑靠近。四个后景孩子动作必须各不相同，不要同步抬手，不要站成一排。柔亮童话国漫风，暖奶油清晨光效，无文字、无字幕、无水印、无章鱼怪、无战斗姿势。
  ```
- 生成风险：多角色容易变脸；如果不稳，先生成浩浩/沐沐近景，再用剪辑转到六人远景。
- 关键图备注：最终版已修正后景动作差异：钰钰站立侧身指向大门，骆骆半蹲低头观察水纹。旧版已归档，不进入视频生产。
- 转场到下一段：大门光芒扩散，切到魔法阵亮起。

### SEG02 - powers_awaken

- 时间：15-30s
- 文件前缀：`ep01_seg02_powers_awaken`
- 主剧情：六个孩子的能力依次亮起。
- 关键画面：六个孩子围成半圆，脚下魔法阵亮起，金、木、水、火、土、光六种元素依次闪过。
- 镜头设计：全景环绕 + 角色能力快切，最后回到六人合影式构图。
- 旁白/台词：
  - 旁白：冒险岛的测试开始了。金、木、水、火、土、光，六种魔法同时亮起。
- 字幕：六种魔法，在孩子们身边亮了起来。
- 可灵AI中文提示词：READY，最终版 `segments/kling-prompts/ep01_seg02_powers_awaken_kling_prompt.md`。
- 生成风险：六人同屏难度高；必要时拆成 3 个双人镜头拼接，不强求单镜完成。
- 转场到下一段：地面水纹突然震动，魔法光被墨色阴影盖住。

### SEG03 - octopus_appears

- 时间：30-45s
- 文件前缀：`ep01_seg03_octopus_appears`
- 主剧情：章鱼怪开场形态冲出潮池洞口，喷墨挡路。
- 关键画面：潮池洞口水面翻涌，章鱼怪开场形态低重心出现，触手展开成软墙，黑墨云在两侧升起，孩子们后退。
- 镜头设计：水面特写 → 章鱼怪冲出 → 镜头轻微震动 → 孩子们后退到画面边缘。
- 旁白/台词：
  - 方方：有怪物！
  - 浩浩：大家后退！
- 字幕：一只章鱼怪突然挡在了他们面前。
- 可灵AI中文提示词：READY，最终版 `segments/kling-prompts/ep01_seg03_octopus_appears_kling_prompt.md`。
- 生成风险：章鱼不能变恐怖写实；必须保持圆胖中性，不要女性向，也不要回到萌宠脸。
- 转场到下一段：墨云铺满画面，用墨色擦屏转场。

### SEG04 - teamwork_defense

- 时间：45-60s
- 文件前缀：`ep01_seg04_teamwork_defense`
- 主剧情：孩子们合作防御和压制章鱼怪，但不伤害它。
- 关键画面：钰钰用金线标记触手，卉卉用藤蔓牵制，骆骆用清水冲散墨云，方方用圆润火光照亮，浩浩升起土墙保护大家。
- 镜头设计：动作快切，每个孩子 2 秒左右，最后浩浩土墙挡住章鱼水花。
- 旁白/台词：
  - 旁白：大家没有乱跑，而是一起配合起来。
- 字幕：六种魔法配合起来，挡住了章鱼怪的冲击。
- 可灵AI中文提示词：READY，最终版 `segments/kling-prompts/ep01_seg04_teamwork_defense_kling_prompt.md`。
- 生成风险：动作太多，建议分成 3 个 5 秒子镜头后剪进一个 15 秒段；钰钰不能出盾，火不能爆炸，水不能变水刃。
- 转场到下一段：土墙落下，镜头推近章鱼怪，听到肚子叫。

### SEG05 - truth_revealed

- 时间：60-75s
- 文件前缀：`ep01_seg05_truth_revealed`
- 主剧情：章鱼怪不再攻击，肚子叫，沐沐发现它只是害怕又饿。
- 关键画面：章鱼怪开场形态瘫坐，表情从凶变委屈；沐沐举着柔和光球走近；浩浩伸手护着她但没有阻止。
- 镜头设计：章鱼近景 → 肚子咕噜的反应 → 沐沐走近 → 光球照亮章鱼眼神。
- 旁白/台词：
  - 沐沐：等等，它好像不是想伤害我们。
  - 沐沐：它只是太饿了。
- 字幕：沐沐发现，章鱼怪其实只是又饿又害怕。
- 可灵AI中文提示词：READY，最终版 `segments/kling-prompts/ep01_seg05_truth_revealed_kling_prompt.md`。
- 生成风险：不要让章鱼直接变成完全萌版，保留过渡状态；沐沐治疗光不能像攻击光束。
- 转场到下一段：暖光包住画面，切到感化后章鱼。

### SEG06 - reconciliation

- 时间：75-90s
- 文件前缀：`ep01_seg06_reconciliation`
- 主剧情：孩子们分享食物，章鱼变成感化后形态，让路，第一关通过。
- 关键画面：感化后章鱼放松地坐在水中，孩子们递出食物，章鱼喷出彩色泡泡，洞口大门打开，远处发光森林出现。
- 镜头设计：中景分享食物 → 章鱼软化微笑 → 彩色泡泡上升 → 镜头推进发光森林。
- 旁白/台词：
  - 旁白：第一场测试，浩浩他们赢了。但他们学到的，不只是战斗。
  - 冒险岛声音：第一关，通过！
- 字幕：第一关通过！大门后，是更深的冒险岛森林。
- 可灵AI中文提示词：READY，最终版 `segments/kling-prompts/ep01_seg06_reconciliation_kling_prompt.md`。
- 生成风险：感化后章鱼不能加睫毛、腮红、花饰或女性化表情；“第一关通过”文字后期加，不要生成在画面里。
- 结尾钩子：镜头推进发光森林，保留 1 秒空镜给第二章衔接。

## Voice And Subtitle Timing

| 段号 | 时间 | 配音建议 | 字幕建议 | 备注 |
| --- | --- | --- | --- | --- |
| SEG01 | 0-15s | 旁白温和，浩浩稳，沐沐轻声害怕。 | 浩浩醒来时，发现大家来到了陌生的冒险岛。 | 句子短，不要解释世界观太多。 |
| SEG02 | 15-30s | 旁白带神秘感。 | 六种魔法，在孩子们身边亮了起来。 | 字幕跟魔法闪现节奏切。 |
| SEG03 | 30-45s | 方方惊呼，浩浩压住场面。 | 一只章鱼怪突然挡在了他们面前。 | 留 0.5 秒给冲出音效。 |
| SEG04 | 45-60s | 旁白加快但别机关枪。 | 六种魔法配合起来，挡住了章鱼怪的冲击。 | 动作多，字幕只保留一句。 |
| SEG05 | 60-75s | 沐沐声音变轻，节奏放慢。 | 沐沐发现，章鱼怪其实只是又饿又害怕。 | 反转段必须留呼吸。 |
| SEG06 | 75-90s | 旁白温暖，冒险岛声音清亮。 | 第一关通过！大门后，是更深的冒险岛森林。 | 最后 1 秒给森林悬念。 |

## Assembly Timeline

| 时间 | 视频素材 | 音频素材 | 字幕素材 | 转场 |
| --- | --- | --- | --- | --- |
| 0.0-15.0 | `videos-raw/ep01_seg01_arrival_kling.mp4` | `audio/ep01_seg01_arrival_voice.wav` | `subtitles/ep01_seg01_arrival.srt` | 大门光扩散 |
| 15.0-30.0 | `videos-raw/ep01_seg02_powers_awaken_kling.mp4` | `audio/ep01_seg02_powers_awaken_voice.wav` | `subtitles/ep01_seg02_powers_awaken.srt` | 水纹震动 |
| 30.0-45.0 | `videos-raw/ep01_seg03_octopus_appears_kling.mp4` | `audio/ep01_seg03_octopus_appears_voice.wav` | `subtitles/ep01_seg03_octopus_appears.srt` | 墨云擦屏 |
| 45.0-60.0 | `videos-raw/ep01_seg04_teamwork_defense_kling.mp4` | `audio/ep01_seg04_teamwork_defense_voice.wav` | `subtitles/ep01_seg04_teamwork_defense.srt` | 土墙落下 |
| 60.0-75.0 | `videos-raw/ep01_seg05_truth_revealed_kling.mp4` | `audio/ep01_seg05_truth_revealed_voice.wav` | `subtitles/ep01_seg05_truth_revealed.srt` | 暖光包裹 |
| 75.0-90.0 | `videos-raw/ep01_seg06_reconciliation_kling.mp4` | `audio/ep01_seg06_reconciliation_voice.wav` | `subtitles/ep01_seg06_reconciliation.srt` | 森林推进 |

## Export Notes

- 每段生成后先人工检查角色一致性，再进入合成。
- 如某段角色崩坏，不要直接重跑 15 秒整段；先重做关键图，再用关键图喂可灵。
- 建议输出规格：竖屏短视频用 1080x1920；横屏动画样片用 1920x1080。当前资产偏竖向角色设定，正式视频方向需用户确认。
- 15 秒片段实际可保留 14.5 秒有效画面 + 0.5 秒转场余量。
- 字幕安全区：底部居中，不压角色脸和关键动作。

## Missing Assets Before Generation

- SEG01 关键图已通过：`segments/keyframes/ep01_seg01_arrival_keyframe.png`；可灵上传图已生成：`segments/keyframes/ep01_seg01_arrival_keyframe_upload.jpg`。
- SEG02-SEG06 关键图尚未生成。
- 6 条可灵视频尚未生成。
- SEG02-SEG06 配音脚本已补齐，实际音频尚未生成。
- SEG02-SEG06 SRT 字幕已补齐。
- 第一集合成脚本尚未生成。

## Recommended Next Step

先用 `segments/keyframes/ep01_seg01_arrival_keyframe_upload.jpg` 和 `segments/kling-prompts/ep01_seg01_arrival_kling_prompt.md` 生成 SEG01 可灵视频。SEG01 通过后，再逐段生成 SEG02-SEG06 的关键图和可灵视频；不要一次性全跑，废片成本太高。
