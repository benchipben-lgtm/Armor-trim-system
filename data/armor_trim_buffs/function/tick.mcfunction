# Refresh each player's trim effects.
execute as @a run function armor_trim_buffs:player_tick

# Rotate the shared server sidebar every five seconds.
scoreboard players add #clock atb_clock 1
execute if score #clock atb_clock matches 100.. run function armor_trim_buffs:sidebar_cycle