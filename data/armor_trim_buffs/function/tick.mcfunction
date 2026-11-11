# Ensure all online players always have a visible row in each statistic.
execute as @a unless score @s atb_deaths matches -2147483648..2147483647 run scoreboard players set @s atb_deaths 0
execute as @a unless score @s atb_pkills matches -2147483648..2147483647 run scoreboard players set @s atb_pkills 0
execute as @a unless score @s atb_chests matches -2147483648..2147483647 run scoreboard players set @s atb_chests 0

# Update each player's private armor-trim piece-count action bar.
execute as @a run function armor_trim_buffs:player_tick

# Rotate the shared sidebar every five seconds.
scoreboard players add #clock atb_clock 1
execute if score #clock atb_clock matches 100.. run function armor_trim_buffs:sidebar_cycle