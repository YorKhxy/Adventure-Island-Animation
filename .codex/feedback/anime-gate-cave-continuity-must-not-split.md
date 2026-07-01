# Anime Gate Cave Continuity Must Not Split

## Metadata

- created: 2026-07-01
- updated: 2026-07-01
- occurrences: 1
- source: user correction during anime keyframe regeneration

## Signal

用户指出：“seg01的门和seg02的山洞应该同一个东西吧”。这是对动漫短剧空间连续性审查的有效修正。

## Problem

在修正章鱼出场空间时，AI 把 SEG01 的“发光门”和 SEG02 的“山洞/潮汐洞”拆成两个入口。虽然解决了“小水洼冒章鱼”的问题，但制造了新的空间断裂：观众会误以为有一个传送门和一个独立山洞。

## Lesson

当用户或剧情设定说明两个空间元素应为同一入口时，不能用“旁边/右后方另有入口”来修补合理性。必须把视觉、脚本、分镜、提示词、关键图统一为同一个结构，并在负面提示词中禁止拆成两个入口。

## Required Behavior

- 做动漫逻辑审查时，检查“门、洞、通道、水域”是否被画成多个互相竞争的入口。
- 回写提示词时明确“同一结构”而不是“旁边还有一个结构”。
- 关键图生成后必须比较相邻段：SEG01 建立的入口，在 SEG02 是否保持同一位置、同一形状、同一功能。
- 如果出现“发光门 + 独立山洞”这种分裂，判定为 FAIL，不进入审美定稿。

## Affected Skills

- anime-logic-continuity-review
- anime-visual-prompt-builder
- kling-prompt-builder
- art-image-critique
