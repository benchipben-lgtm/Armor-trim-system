scoreboard objectives add atb_ame dummy
scoreboard objectives add atb_dia dummy
scoreboard objectives add atb_lap dummy
scoreboard objectives add atb_iro dummy
scoreboard objectives add atb_cop dummy
scoreboard objectives add atb_gold dummy
scoreboard objectives add atb_emerald dummy
scoreboard objectives add atb_red dummy
scoreboard objectives add atb_neth dummy
scoreboard objectives add atb_tmp dummy

# Server statistics
scoreboard objectives add atb_deaths deathCount {"text":"Deaths","color":"red"}
scoreboard objectives add atb_pkills playerKillCount {"text":"Players Killed","color":"gold"}
scoreboard objectives add atb_mined dummy {"text":"Blocks Mined","color":"green"}
scoreboard objectives add atb_chests minecraft.custom:minecraft.open_chest {"text":"Chests Opened","color":"aqua"}
scoreboard objectives add atb_clock dummy
scoreboard objectives add atb_page dummy
scoreboard players set #clock atb_clock 0
scoreboard players set #page atb_page 0
scoreboard objectives setdisplay sidebar atb_deaths
tellraw @a [{"text":"[Armor Trim Buffs] ","color":"gold"},{"text":"Loaded for Java 26.3.","color":"green"}]