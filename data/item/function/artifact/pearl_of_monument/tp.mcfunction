function item:artifact/eye_of_monument/particle

execute as @e[distance=0..,type=minecraft:armor_stand,tag=pom] if function item:artifact/pearl_of_monument/orign \
run tag @s add return_success

execute positioned as @n[distance=0..,type=minecraft:armor_stand,tag=pom,tag=return_success] \
positioned ~ ~-2 ~ run tp ~ ~ ~
execute positioned as @n[distance=0..,type=minecraft:armor_stand,tag=pom,tag=return_success] \
positioned ~ ~-2 ~ run function item:artifact/eye_of_monument/particle

title @s actionbar [{"text":"-*-=₪|☲| [◎] |☲|₪=-*-","color":"#f158ff","bold":false,\
"shadow_color":-7926867}]

tag @e[distance=0..,type=minecraft:armor_stand,tag=pom] remove return_success