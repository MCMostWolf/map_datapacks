
execute if score @s area_title matches 1 run title @s times 10 40 10
execute if score @s area_title matches 1 run title @s subtitle \
[{"text":"","extra":[{"translate":"area.verdant_woods.name"},{"text":""}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 1 run title @s title ""

execute if score @s area_title matches 25..36 run title @s times 0 25 20

execute if score @s area_title matches 25 run title @s subtitle \
[{"text":"₪ ","extra":[{"translate":"area.verdant_woods.name"},{"text":" ₪"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 26 run title @s subtitle \
[{"text":"-₪ ","extra":[{"translate":"area.verdant_woods.name"},{"text":" ₪-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 27 run title @s subtitle \
[{"text":"-₪| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |₪-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 28 run title @s subtitle \
[{"text":"=₪| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |₪="}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 29 run title @s subtitle \
[{"text":"=₪|| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" ||₪="}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 30 run title @s subtitle \
[{"text":"=₪|-| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |-|₪="}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 31 run title @s subtitle \
[{"text":"=₪|=| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |=|₪="}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 32 run title @s subtitle \
[{"text":"-=₪|=| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |=|₪=-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 33 run title @s subtitle \
[{"text":"-*=₪|=| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |=|₪=*-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 34 run title @s subtitle \
[{"text":"-*=₪|☲| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |☲|₪=*-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 35 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |☲|₪=-*-"}],"color":"#7cbd64","shadow_color":-14400224}]
execute if score @s area_title matches 36 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.verdant_woods.name"},{"text":" |☲|₪=-*-"}],"color":"#d6ffc6","shadow_color":-12157632}]
execute if score @s area_title matches 36 run playsound minecraft:block.cave_vines.pick_berries ambient @s ~ ~ ~ 1 0.8
execute if score @s area_title matches 36 run playsound minecraft:entity.slime.attack ambient @s ~ ~ ~ 1 1.2

execute if score @s area_title matches 25..36 run playsound minecraft:block.azalea_leaves.break ambient @s ~ ~ ~ 1 1.9
execute if score @s area_title matches 25..36 run title @s title ""

execute unless score @s area_title matches 90 run return run scoreboard players add @s area_title 1
scoreboard players reset @s area_title
title @s reset