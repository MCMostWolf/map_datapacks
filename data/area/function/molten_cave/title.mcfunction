
execute if score @s area_title matches 1 run title @s times 10 40 10
execute if score @s area_title matches 1 run title @s subtitle \
[{"text":"","extra":[{"translate":"area.molten_cave.name"},{"text":""}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 1 run title @s title ""

execute if score @s area_title matches 25..36 run title @s times 0 25 20

execute if score @s area_title matches 25 run title @s subtitle \
[{"text":"₪ ","extra":[{"translate":"area.molten_cave.name"},{"text":" ₪"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 26 run title @s subtitle \
[{"text":"-₪ ","extra":[{"translate":"area.molten_cave.name"},{"text":" ₪-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 27 run title @s subtitle \
[{"text":"-₪| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |₪-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 28 run title @s subtitle \
[{"text":"=₪| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |₪="}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 29 run title @s subtitle \
[{"text":"=₪|| ","extra":[{"translate":"area.molten_cave.name"},{"text":" ||₪="}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 30 run title @s subtitle \
[{"text":"=₪|-| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |-|₪="}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 31 run title @s subtitle \
[{"text":"=₪|=| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |=|₪="}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 32 run title @s subtitle \
[{"text":"-=₪|=| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |=|₪=-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 33 run title @s subtitle \
[{"text":"-*=₪|=| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |=|₪=*-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 34 run title @s subtitle \
[{"text":"-*=₪|☲| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |☲|₪=*-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 35 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |☲|₪=-*-"}],"color":"#95733f","shadow_color":-12112863}]
execute if score @s area_title matches 36 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.molten_cave.name"},{"text":" |☲|₪=-*-"}],"color":"#da8300","shadow_color":-7656960}]
execute if score @s area_title matches 36 run playsound minecraft:item.bucket.empty_lava ambient @s ~ ~ ~ 1 0.5
execute if score @s area_title matches 36 run playsound minecraft:item.bucket.empty_lava ambient @s ~ ~ ~ 0.7 1.8

execute if score @s area_title matches 25..36 run playsound minecraft:block.lava.pop ambient @s ~ ~ ~ 0.4 1.6
execute if score @s area_title matches 25..36 run title @s title ""

execute unless score @s area_title matches 90 run return run scoreboard players add @s area_title 1
scoreboard players reset @s area_title
title @s reset