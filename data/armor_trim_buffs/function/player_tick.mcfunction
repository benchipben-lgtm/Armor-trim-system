# Scoreboard-only player display: count equipped trim pieces for the personal readout.
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

# Personal action-bar readout. Values are equipped piece counts (0-4), not applied buffs.
title @s actionbar {"text":"Trim pieces  A:","color":"gold","extra":[{"score":{"name":"@s","objective":"atb_ame"}},{"text":"  D:"},{"score":{"name":"@s","objective":"atb_dia"}},{"text":"  L:"},{"score":{"name":"@s","objective":"atb_lap"}},{"text":"  I:"},{"score":{"name":"@s","objective":"atb_iro"}},{"text":"  C:"},{"score":{"name":"@s","objective":"atb_cop"}},{"text":"  G:"},{"score":{"name":"@s","objective":"atb_gold"}},{"text":"  E:"},{"score":{"name":"@s","objective":"atb_emerald"}},{"text":"  R:"},{"score":{"name":"@s","objective":"atb_red"}},{"text":"  N:"},{"score":{"name":"@s","objective":"atb_neth"}}]}