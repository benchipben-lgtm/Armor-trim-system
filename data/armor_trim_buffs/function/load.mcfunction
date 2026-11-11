# Server scoreboard tracker.
scoreboard objectives add atb_deaths deathCount
scoreboard objectives add atb_pkills playerKillCount
scoreboard objectives add atb_chests minecraft.custom:minecraft.open_chest

# Internal per-player trim piece counts for the private action-bar display.
scoreboard objectives add atb_ame dummy
scoreboard objectives add atb_dia dummy
scoreboard objectives add atb_lap dummy
scoreboard objectives add atb_iro dummy
scoreboard objectives add atb_cop dummy
scoreboard objectives add atb_gold dummy
scoreboard objectives add atb_emerald dummy
scoreboard objectives add atb_red dummy
scoreboard objectives add atb_neth dummy

# Sidebar rotation state.
scoreboard objectives add atb_clock dummy
scoreboard objectives add atb_page dummy
scoreboard players set #clock atb_clock 0
scoreboard players set #page atb_page 0

# Seed each objective with a visible entry so the sidebar is not empty.
scoreboard players set Server atb_deaths 0
scoreboard players set Server atb_pkills 0
scoreboard players set Server atb_chests 0

# Initialize online players' rows.
scoreboard players set @a atb_deaths 0
scoreboard players set @a atb_pkills 0
scoreboard players set @a atb_chests 0

scoreboard objectives setdisplay sidebar atb_deaths
tellraw @a [{"text":"[Scoreboard] ","color":"gold"},{"text":"Server statistics loaded.","color":"green"}]