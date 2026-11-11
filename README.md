# Armor Trim Buffs

Minecraft Java Edition **26.3** datapack (data pack format **121.0**).

## Tier rule — absolute, not cumulative

The number of equipped armor pieces with the same trim material selects one tier:
- 1 piece = Tier 1
- 2 pieces = Tier 2
- 3 pieces = Tier 3
- 4 pieces = Tier 4

Each tier is the final value for that tier. For example, Tier 4 at 30% means exactly 30%, not the sum of Tiers 1–4.

Different trim materials use independent tier counters.

## Beta status

This repository is an **in-progress beta scaffold**, not a finished release. The current implementation includes:
- Trim-material counting across the four armor slots.
- Initial movement-speed and jump-effect logic for selected materials.
- Advancement event hooks for player-hit and player-kill events.
- Per-player counters for hit events and weapon categories, intended for diagnostics.

The current movement implementation and event hooks still require in-game validation. The complete material effects, damage/healing calculations, mining bonuses, defensive bonuses, fractional absorption, weapon-specific effects, and Ancient City loot adjustment are not all implemented yet. Do not treat this commit as a complete implementation of the specification.

## Testing the current event hooks

1. Put the datapack in `<world>/datapacks/`.
2. Run `/reload`.
3. Confirm it appears in `/datapack list`.
4. After combat events, run `/function armor_trim_buffs:debug/status` to inspect the event counters.

If the pack reports errors during `/reload`, capture the full server log before testing further.

## Version

Targets Java 26.3. The official release notes list data pack version 121.0:
https://www.minecraft.net/en-us/article/minecraft-java-edition-26-3
