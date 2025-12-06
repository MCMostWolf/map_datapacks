execute store result score @s id run scoreboard players add @n[distance=..0.01,type=minecraft:item_display,tag=altar.core] id 1
scoreboard players operation @s uid = @n[distance=..0.01,type=minecraft:item_display,tag=altar.core] uid
rotate @s facing entity @n[distance=..0.01,type=minecraft:item_display,tag=altar.core]
execute at @s run rotate @s ~ 0
tag @s add bonded
execute at @s run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 1 0.7

execute store result storage minecraft:temp cnt int 1 run scoreboard players get @s id
execute store result storage minecraft:temp uid int 1 run scoreboard players get @s uid
execute at @s run function custom:altar/base/debug with storage minecraft:temp