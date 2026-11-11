# Armor Trim Buffs

Minecraft Java Edition **26.3** datapack. Data pack format: **121.0**.

This repository implements the non-combat passive portion of the trim system. Weapon-combat mechanics are not included.

## Tier rule — absolute, not cumulative

The number of equipped armor pieces with the same trim material selects one tier:
- 1 piece = Tier 1
- 2 pieces = Tier 2
- 3 pieces = Tier 3
- 4 pieces = Tier 4

**Each tier is the final value for that tier.** Tier 4 does not add Tier 1 + Tier 2 + Tier 3. For example, a Tier 4 speed bonus of 30% is exactly 30%, not 70%.

Different materials have independent tier counters. Their active movement-speed modifiers multiply as separate attribute modifiers; they are not summed into a single percentage.

## Implemented in this initial commit

- Detects trim materials on all four equipped armor slots.
- Applies exact movement-speed percentages for Amethyst, Diamond, Lapis, Iron, and Netherite tiers.
- Lapis uses its water-specific speed value while the player is in water.
- Amethyst Tier 1 grants Jump Boost I; Tier 4 grants Jump Boost IV.
- Modifiers are removed and re-applied from the currently selected tier, so old tier values do not accumulate.

## Not included

This repository does not implement weapon-triggered combat, critical-hit, damage, or lifesteal mechanics. It also does not yet implement percentage-based mining speed, resistance percentages, or fractional absorption values; vanilla potion effects do not represent all of those percentages exactly, so they must not be substituted as if they did.

## Install

1. Download the repository as a ZIP.
2. Place the datapack folder in `<world>/datapacks/`.
3. Run `/reload`.
4. Check `/datapack list`.

## Version

The pack targets Java 26.3 with data pack format 121.0. See the official [Java 26.3 release notes](https://www.minecraft.net/en-us/article/minecraft-java-edition-26-3).
