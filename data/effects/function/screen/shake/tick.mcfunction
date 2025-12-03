execute if entity @s[type=minecraft:player] run return fail
tag @s add target
scoreboard players remove @s effects 1
execute unless score @s effects matches ..0 on passengers on origin rotated as @s run return run function effects:screen/shake/shake
#execute on passengers on origin at @s rotated as @n[type=minecraft:armor_stand,tag=target,distance=..] run rotate @s facing ^ ^ ^1
tag @s remove target
execute on passengers run kill @s
kill @s