# Server Scoreboard

Minecraft Java Edition 26.3 datapack (data pack format 121.0).

This repository version contains the server scoreboard/stat-tracking system and a personal armor-trim piece-count action-bar readout. It does not apply armor buffs.

## Shared server sidebar

The sidebar rotates every five seconds through:
1. Deaths
2. Players killed
3. Chests opened

Minecraft's vanilla sidebar is shared by all players online and can show only one objective at a time, so these statistics rotate globally.

## Individual armor-trim readout

Each player sees a personal action-bar readout with the number of equipped pieces for each trim material (A/D/L/I/C/G/E/R/N, values 0–4). These are trim-piece counts only.

## Tracking details

- Deaths: vanilla deathCount criterion.
- Players killed: vanilla playerKillCount criterion.
- Chests opened: vanilla minecraft.custom:minecraft.open_chest statistic.
- Blocks mined: not included. The former advancement used minecraft:mined_block, which is not a registered advancement trigger in Java 26.3, causing the server to reject the datapack during registry loading. A single vanilla scoreboard criterion also does not provide a total for every block type.

## Testing status

The invalid advancement has been removed so it no longer prevents datapack registry loading. The remaining datapack still needs to be tested on a live Java 26.3 multiplayer server.