
execute if score @s area_title matches 1 run title @s times 10 40 10
execute if score @s area_title matches 1 run title @s subtitle \
[{"text":"","extra":[{"translate":"area.blazing_mire.name"},{"text":""}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 1 run title @s title ""

execute if score @s area_title matches 25..36 run title @s times 0 25 20

execute if score @s area_title matches 25 run title @s subtitle \
[{"text":"₪ ","extra":[{"translate":"area.blazing_mire.name"},{"text":" ₪"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 26 run title @s subtitle \
[{"text":"-₪ ","extra":[{"translate":"area.blazing_mire.name"},{"text":" ₪-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 27 run title @s subtitle \
[{"text":"-₪| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |₪-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 28 run title @s subtitle \
[{"text":"=₪| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |₪="}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 29 run title @s subtitle \
[{"text":"=₪|| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" ||₪="}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 30 run title @s subtitle \
[{"text":"=₪|-| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |-|₪="}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 31 run title @s subtitle \
[{"text":"=₪|=| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |=|₪="}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 32 run title @s subtitle \
[{"text":"-=₪|=| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |=|₪=-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 33 run title @s subtitle \
[{"text":"-*=₪|=| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |=|₪=*-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 34 run title @s subtitle \
[{"text":"-*=₪|☲| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |☲|₪=*-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 35 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |☲|₪=-*-"}],"color":"#c74600","shadow_color":-12575215}]
execute if score @s area_title matches 36 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.blazing_mire.name"},{"text":" |☲|₪=-*-"}],"color":"#ffcb22","shadow_color":-4567808}]
execute if score @s area_title matches 36 run playsound minecraft:entity.blaze.ambient ambient @s ~ ~ ~ 0.35 1.8
execute if score @s area_title matches 36 run playsound minecraft:entity.blaze.hurt ambient @s ~ ~ ~ 0.6 1.2

execute if score @s area_title matches 25..36 run playsound minecraft:item.firecharge.use ambient @s ~ ~ ~ 0.2 2
execute if score @s area_title matches 25..36 run playsound minecraft:item.flintandsteel.use ambient @s ~ ~ ~ 0.5 2
execute if score @s area_title matches 25..36 run title @s title ""

execute unless score @s area_title matches 90 run return run scoreboard players add @s area_title 1
scoreboard players reset @s area_title
title @s reset