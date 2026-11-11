# Armor Trim Buffs — Server Scoreboards

Minecraft Java Edition 26.3 datapack (data pack format 121.0).

This repository version contains **only the server scoreboard/stat-tracking system**. Armor-trim effects and attribute modifiers have been removed.

## Shared server sidebar

The sidebar rotates every five seconds through:
1. Deaths
2. Players killed
3. Blocks mined
4. Chests opened

Minecraft's vanilla sidebar is shared by all players online and can show only one objective at a time, so these four statistics rotate globally.

## Individual armor-trim readout

Each player sees a personal action-bar readout with the number of equipped pieces for each trim material (A/D/L/I/C/G/E/R/N, values 0–4). These are **trim-piece counts only**; this scoreboard-only version does not apply armor buffs.

## Tracking details

- Deaths: vanilla `deathCount` criterion.
- Players killed: vanilla `playerKillCount` criterion.
- Chests opened: vanilla `minecraft.custom:minecraft.open_chest` statistic.
- Blocks mined: repeatable `minecraft:mined_block` advancement increments a custom score and revokes itself after each block break.

## Testing status

The code has been committed but has not been tested on a live Java 26.3 multiplayer server. Verify the counters and sidebar rotation with multiple players before relying on it.
