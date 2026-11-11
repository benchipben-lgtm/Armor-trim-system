# Runs after a player kill. Revoke so future kills can trigger it again.
advancement revoke @s only armor_trim_buffs:player_killed_entity
scoreboard players add @s atb_kills 1
