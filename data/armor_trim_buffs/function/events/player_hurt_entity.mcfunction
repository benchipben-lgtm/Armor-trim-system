# Runs once for each successful player hit. Revoke the advancement so it can trigger again.
advancement revoke @s only armor_trim_buffs:player_hurt_entity

# Event counters are useful for testing and later per-hit effects.
scoreboard players add @s atb_hits 1

# Combat hooks are deliberately isolated here so each material can be tested independently.
execute if items entity @s weapon.mainhand #minecraft:swords run function armor_trim_buffs:events/hit_sword
execute if items entity @s weapon.mainhand #minecraft:axes run function armor_trim_buffs:events/hit_axe
execute if items entity @s weapon.mainhand minecraft:mace run function armor_trim_buffs:events/hit_mace
execute if items entity @s weapon.mainhand minecraft:trident run function armor_trim_buffs:events/hit_trident
