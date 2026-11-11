# Armor Trim Buffs

Minecraft Java Edition **26.3** datapack (data pack format **121.0**).

## Tier rule — absolute, not cumulative

The number of equipped armor pieces with the same trim material selects one tier:
- 1 piece = Tier 1
- 2 pieces = Tier 2
- 3 pieces = Tier 3
- 4 pieces = Tier 4

Each tier is the final value for that tier. For example, Tier 4 at 30% means exactly 30%, not the sum of Tiers 1–4. Different materials use independent modifiers and combine independently.

## Current implementation

Implemented in the current scaffold:
- Counts each of the nine requested trim materials across head, chest, legs, and feet.
- Amethyst movement-speed tiers and Jump Boost at Tiers 1 and 4.
- Diamond movement-speed tiers.
- Lapis movement-speed tiers, including the higher values when the player is standing in water.
- Iron movement-speed tiers.
- Netherite Tier 4 movement speed.
- Copper and Gold mining-speed tiers through the Java 26.3 block_break_speed attribute.

Not yet implemented:
- Remaining defensive, health/absorption, and other passive effects.
- Additional tool-related effects and combat-event effects.
- Ancient City loot-table adjustment.

## Important testing note

This is an **in-progress beta**, not a finished or in-game-verified release. The repository changes have not been tested in a Minecraft 26.3 server/client. Attribute modifier behavior, armor trim item predicates, and effect interactions still need in-game validation.

## Install

1. Download the repository as a ZIP.
2. Put the datapack folder in your world's datapacks folder.
3. Run /reload.
4. Check /datapack list and the server log for errors.

Pack metadata targets Java 26.3 with data pack format 121.0.
