
execute if score @s area_title matches 1 run title @s times 10 40 10
execute if score @s area_title matches 1 run title @s subtitle \
[{"text":"","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":""}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 1 run title @s title ""

execute if score @s area_title matches 25..36 run title @s times 0 25 20

execute if score @s area_title matches 25 run title @s subtitle \
[{"text":"₪ ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" ₪"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 26 run title @s subtitle \
[{"text":"-₪ ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" ₪-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 27 run title @s subtitle \
[{"text":"-₪| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |₪-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 28 run title @s subtitle \
[{"text":"=₪| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |₪="}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 29 run title @s subtitle \
[{"text":"=₪|| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" ||₪="}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 30 run title @s subtitle \
[{"text":"=₪|-| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |-|₪="}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 31 run title @s subtitle \
[{"text":"=₪|=| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |=|₪="}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 32 run title @s subtitle \
[{"text":"-=₪|=| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |=|₪=-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 33 run title @s subtitle \
[{"text":"-*=₪|=| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |=|₪=*-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 34 run title @s subtitle \
[{"text":"-*=₪|☲| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |☲|₪=*-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 35 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |☲|₪=-*-"}],"color":"#7435a7","shadow_color":-13629122}]
execute if score @s area_title matches 36 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.crying_corrosion_lands.name"},{"text":" |☲|₪=-*-"}],"color":"#dd98ff","shadow_color":-10157916}]
execute if score @s area_title matches 36 run playsound minecraft:block.dried_ghast.ambient_water ambient @s ~ ~ ~ 0.7 1
execute if score @s area_title matches 36 run playsound minecraft:block.dried_ghast.ambient_water ambient @s ~ ~ ~ 1 1.6
execute if score @s area_title matches 36 run playsound minecraft:block.dried_ghast.ambient_water ambient @s ~ ~ ~ 1 1.6
execute if score @s area_title matches 36 run playsound minecraft:block.dried_ghast.ambient_water ambient @s ~ ~ ~ 1 2
execute if score @s area_title matches 36 run playsound minecraft:weather.end_flash ambient @s ~ ~ ~ 0.6 1.3

execute if score @s area_title matches 25..36 run playsound minecraft:block.pointed_dripstone.drip_lava ambient @s ~ ~ ~ 1 2
execute if score @s area_title matches 25..36 run title @s title ""

execute unless score @s area_title matches 90 run return run scoreboard players add @s area_title 1
scoreboard players reset @s area_title
title @s reset