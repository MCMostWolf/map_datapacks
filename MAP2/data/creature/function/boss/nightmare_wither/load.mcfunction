
#数据值
data modify entity @s data.creature_id set value "nightmare_wither"
tag @s add nightmare_wither
#生成点位
data modify entity @s data.spawnpoint.x set from entity @n[type=minecraft:marker,tag=nightmare_wither] Pos.[0]
data modify entity @s data.spawnpoint.y set from entity @n[type=minecraft:marker,tag=nightmare_wither] Pos.[1]
data modify entity @s data.spawnpoint.z set from entity @n[type=minecraft:marker,tag=nightmare_wither] Pos.[2]
#属性
attribute @s minecraft:max_health base set 400
attribute @s minecraft:scale base set 1.4
#effect give @s minecraft:invisibility infinite 255 true
function creature:boss/nightmare_wither/render
#
data modify entity @s Silent set value 1b
#
#敌对通用
function creature:_creature/hostial/_load
tag @s add boss
#名称
data merge entity @s {CustomNameVisible:1b,CustomName:[{\
"translate":"creature.boss.nightmare_wither.name","color":"#17002f","shadow_color":-9043746}]}
team join nightmare
