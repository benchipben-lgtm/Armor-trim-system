scoreboard players set #clock atb_clock 0
execute if score #page atb_page matches 0 run scoreboard objectives setdisplay sidebar atb_deaths
execute if score #page atb_page matches 1 run scoreboard objectives setdisplay sidebar atb_pkills
execute if score #page atb_page matches 2 run scoreboard objectives setdisplay sidebar atb_mined
execute if score #page atb_page matches 3 run scoreboard objectives setdisplay sidebar atb_chests
scoreboard players add #page atb_page 1
execute if score #page atb_page matches 4.. run scoreboard players set #page atb_page 0