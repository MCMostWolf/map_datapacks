#格挡
attribute @s minecraft:movement_speed base set 0.24
attribute @s minecraft:knockback_resistance base reset
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 1.2
item replace entity @s weapon.offhand with minecraft:air
particle minecraft:item{item:"minecraft:shield"} ~ ~0.7 ~ 0.4 0.4 0.4 0.15 30 normal
function effects:particle/circle/cloud/mini_out