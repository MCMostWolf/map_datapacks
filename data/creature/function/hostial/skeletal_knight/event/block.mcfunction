#格挡
attribute @s minecraft:movement_speed base set 0.23
attribute @s minecraft:knockback_resistance base reset
#表现
item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 0.7
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 0.7
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 1.2
particle minecraft:item{item:"minecraft:shield"} ~ ~0.7 ~ 0.4 0.4 0.4 0.15 20 normal
#格挡成功/失败
execute if function creature:hostial/skeletal_knight/event/block_success run return run \
effect give @s minecraft:instant_damage 1 10 true
effect give @s minecraft:slowness 3 255 false
effect give @s minecraft:weakness 3 255 false
#
particle minecraft:explosion ~ ~1.4 ~ 1.4 0 0 1 0 normal
rotate @s ~-50 -60
execute rotated ~50 70 run function effects:screen/lock/_spawn {time:60}
execute rotated ~180 -10 run function tool:quick_cmd/entity/_motion {speed:0.6}
data modify entity @s Motion set from storage minecraft:tool Motion