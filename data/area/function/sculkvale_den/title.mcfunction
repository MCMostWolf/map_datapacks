
execute if score @s area_title matches 1 run title @s times 10 40 10
execute if score @s area_title matches 1 run title @s subtitle \
[{"text":"","extra":[{"translate":"area.sculkvale_den.name"},{"text":""}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 1 run title @s title ""

execute if score @s area_title matches 25..36 run title @s times 0 25 20

execute if score @s area_title matches 25 run title @s subtitle \
[{"text":"₪ ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" ₪"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 26 run title @s subtitle \
[{"text":"-₪ ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" ₪-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 27 run title @s subtitle \
[{"text":"-₪| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |₪-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 28 run title @s subtitle \
[{"text":"=₪| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |₪="}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 29 run title @s subtitle \
[{"text":"=₪|| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" ||₪="}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 30 run title @s subtitle \
[{"text":"=₪|-| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |-|₪="}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 31 run title @s subtitle \
[{"text":"=₪|=| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |=|₪="}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 32 run title @s subtitle \
[{"text":"-=₪|=| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |=|₪=-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 33 run title @s subtitle \
[{"text":"-*=₪|=| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |=|₪=*-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 34 run title @s subtitle \
[{"text":"-*=₪|☲| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |☲|₪=*-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 35 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |☲|₪=-*-"}],"color":"#2d274f","shadow_color":-13286034}]
execute if score @s area_title matches 36 run title @s subtitle \
[{"text":"-*-=₪|☲| ","extra":[{"translate":"area.sculkvale_den.name"},{"text":" |☲|₪=-*-"}],"color":"#43477f","shadow_color":-11951167}]
execute if score @s area_title matches 36 run playsound minecraft:entity.warden.tendril_clicks ambient @s ~ ~ ~ 0.6 0
execute if score @s area_title matches 36 run playsound minecraft:block.sculk_shrieker.shriek ambient @s ~ ~ ~ 0.5 0.7
execute if score @s area_title matches 36 run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 0.8 1.6

execute if score @s area_title matches 25..36 run playsound minecraft:block.sculk.charge ambient @s ~ ~ ~ 1 2
execute if score @s area_title matches 25..36 run title @s title ""

execute unless score @s area_title matches 90 run return run scoreboard players add @s area_title 1
scoreboard players reset @s area_title
title @s reset