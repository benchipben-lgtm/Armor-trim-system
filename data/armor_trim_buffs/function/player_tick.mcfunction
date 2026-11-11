# Armor Trim Buffs — Java 26.3
# Count matching trim materials. Each count selects one absolute tier.
scoreboard players set @s atb_ame 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:amethyst"}] run scoreboard players add @s atb_ame 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:amethyst"}] run scoreboard players add @s atb_ame 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:amethyst"}] run scoreboard players add @s atb_ame 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:amethyst"}] run scoreboard players add @s atb_ame 1
scoreboard players set @s atb_dia 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:diamond"}] run scoreboard players add @s atb_dia 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:diamond"}] run scoreboard players add @s atb_dia 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:diamond"}] run scoreboard players add @s atb_dia 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:diamond"}] run scoreboard players add @s atb_dia 1
scoreboard players set @s atb_lap 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:lapis"}] run scoreboard players add @s atb_lap 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:lapis"}] run scoreboard players add @s atb_lap 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:lapis"}] run scoreboard players add @s atb_lap 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:lapis"}] run scoreboard players add @s atb_lap 1
scoreboard players set @s atb_iro 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:iron"}] run scoreboard players add @s atb_iro 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:iron"}] run scoreboard players add @s atb_iro 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:iron"}] run scoreboard players add @s atb_iro 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:iron"}] run scoreboard players add @s atb_iro 1
scoreboard players set @s atb_cop 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:copper"}] run scoreboard players add @s atb_cop 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:copper"}] run scoreboard players add @s atb_cop 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:copper"}] run scoreboard players add @s atb_cop 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:copper"}] run scoreboard players add @s atb_cop 1
scoreboard players set @s atb_gold 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:gold"}] run scoreboard players add @s atb_gold 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:gold"}] run scoreboard players add @s atb_gold 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:gold"}] run scoreboard players add @s atb_gold 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:gold"}] run scoreboard players add @s atb_gold 1
scoreboard players set @s atb_emerald 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:emerald"}] run scoreboard players add @s atb_emerald 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:emerald"}] run scoreboard players add @s atb_emerald 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:emerald"}] run scoreboard players add @s atb_emerald 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:emerald"}] run scoreboard players add @s atb_emerald 1
scoreboard players set @s atb_red 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:redstone"}] run scoreboard players add @s atb_red 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:redstone"}] run scoreboard players add @s atb_red 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:redstone"}] run scoreboard players add @s atb_red 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:redstone"}] run scoreboard players add @s atb_red 1
scoreboard players set @s atb_neth 0
execute if items entity @s armor.head *[minecraft:trim={material:"minecraft:netherite"}] run scoreboard players add @s atb_neth 1
execute if items entity @s armor.chest *[minecraft:trim={material:"minecraft:netherite"}] run scoreboard players add @s atb_neth 1
execute if items entity @s armor.legs *[minecraft:trim={material:"minecraft:netherite"}] run scoreboard players add @s atb_neth 1
execute if items entity @s armor.feet *[minecraft:trim={material:"minecraft:netherite"}] run scoreboard players add @s atb_neth 1

# Remove only modifiers owned by this pack, then apply each current tier.
attribute @s minecraft:movement_speed modifier remove armor_trim_buffs:amethyst_speed
attribute @s minecraft:movement_speed modifier remove armor_trim_buffs:diamond_speed
attribute @s minecraft:movement_speed modifier remove armor_trim_buffs:lapis_speed
attribute @s minecraft:movement_speed modifier remove armor_trim_buffs:iron_speed
attribute @s minecraft:movement_speed modifier remove armor_trim_buffs:netherite_speed
attribute @s minecraft:block_break_speed modifier remove armor_trim_buffs:copper_mining
attribute @s minecraft:block_break_speed modifier remove armor_trim_buffs:gold_mining

# Amethyst movement tiers; Jump Boost is active at Tiers 1 and 4 only.
execute if score @s atb_ame matches 1 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:amethyst_speed 0.15 add_multiplied_total
execute if score @s atb_ame matches 2 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:amethyst_speed 0.25 add_multiplied_total
execute if score @s atb_ame matches 3 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:amethyst_speed 0.30 add_multiplied_total
execute if score @s atb_ame matches 4 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:amethyst_speed 0.30 add_multiplied_total
execute if score @s atb_ame matches 1 run effect give @s minecraft:jump_boost 2 0 true
execute if score @s atb_ame matches 4 run effect give @s minecraft:jump_boost 2 3 true

# Diamond movement tiers.
execute if score @s atb_dia matches 1 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:diamond_speed 0.15 add_multiplied_total
execute if score @s atb_dia matches 2 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:diamond_speed 0.24 add_multiplied_total
execute if score @s atb_dia matches 3 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:diamond_speed 0.30 add_multiplied_total
execute if score @s atb_dia matches 4 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:diamond_speed 0.30 add_multiplied_total

# Lapis movement tiers; water bonus applies when the player's feet are in water.
execute if score @s atb_lap matches 1 unless block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.20 add_multiplied_total
execute if score @s atb_lap matches 2 unless block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.25 add_multiplied_total
execute if score @s atb_lap matches 3 unless block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.30 add_multiplied_total
execute if score @s atb_lap matches 4 unless block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.45 add_multiplied_total
execute if score @s atb_lap matches 1 if block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.25 add_multiplied_total
execute if score @s atb_lap matches 2 if block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.30 add_multiplied_total
execute if score @s atb_lap matches 3 if block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.35 add_multiplied_total
execute if score @s atb_lap matches 4 if block ~ ~ ~ minecraft:water run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:lapis_speed 0.50 add_multiplied_total

# Iron movement tiers.
execute if score @s atb_iro matches 1 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:iron_speed 0.05 add_multiplied_total
execute if score @s atb_iro matches 2 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:iron_speed 0.09 add_multiplied_total
execute if score @s atb_iro matches 3 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:iron_speed 0.11 add_multiplied_total
execute if score @s atb_iro matches 4 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:iron_speed 0.25 add_multiplied_total

# Netherite movement is only active at Tier 4.
execute if score @s atb_neth matches 4 run attribute @s minecraft:movement_speed modifier add armor_trim_buffs:netherite_speed 0.25 add_multiplied_total

# Copper mining-speed tiers.
execute if score @s atb_cop matches 1 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:copper_mining 0.15 add_multiplied_total
execute if score @s atb_cop matches 2 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:copper_mining 0.23 add_multiplied_total
execute if score @s atb_cop matches 3 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:copper_mining 0.32 add_multiplied_total
execute if score @s atb_cop matches 4 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:copper_mining 0.45 add_multiplied_total

# Gold mining-speed tiers.
execute if score @s atb_gold matches 1 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:gold_mining 0.20 add_multiplied_total
execute if score @s atb_gold matches 2 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:gold_mining 0.25 add_multiplied_total
execute if score @s atb_gold matches 3 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:gold_mining 0.35 add_multiplied_total
execute if score @s atb_gold matches 4 run attribute @s minecraft:block_break_speed modifier add armor_trim_buffs:gold_mining 0.55 add_multiplied_total
