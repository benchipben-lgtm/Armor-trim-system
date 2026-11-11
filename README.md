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

## Multiplayer server sidebar and player readout

The server sidebar rotates every five seconds through four per-player statistics:
- Deaths
- Players killed
- Blocks mined
- Chests opened (the vanilla `open_chest` statistic)

Each player also gets a personal action-bar readout showing their equipped trim-piece counts (A/D/L/I/C/G/E/R/N, from 0 to 4). The tier counts map to the trim effects above.

A vanilla scoreboard sidebar can display only one objective at a time, and the sidebar is shared by everyone online. Therefore the statistics rotate globally, while the action-bar trim readout is individual to each player. This avoids showing one player's armor buffs to everyone else.

The blocks-mined counter uses a repeatable `minecraft:mined_block` advancement trigger that increments a custom score and revokes itself after each qualifying block break. This still needs in-game verification on a Java 26.3 server.

## Server testing status

The multiplayer scoreboard, advancement-based block counter, and action-bar readout have been committed but have **not** been tested in a live server. Test with two players, mine several different block types, open chests, record deaths/player kills, and change armor trims to verify updates.
