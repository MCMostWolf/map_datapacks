##条件判定
execute if entity @s[gamemode=spectator,tag=!return_used] run return run function item:use/click/fail
#execute if score @s effect_ice_level matches 3.. run return run function item:use/click/fail
#位置判断
tag @s remove offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{Click:1b}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{Click:1b}] run tag @s add offhand
#execute if entity @s[tag=return_drop] unless function player:click/throw run return run function item:use/click/fail
#复合位置
execute if score @s click matches 1.. unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{Click:1b}] run tag @s add offhand
execute unless score @s click matches 1.. if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{Click:1b}] run tag @s add offhand
#内置冷却
execute if score @s[tag=!offhand,tag=!return_used,tag=!usinger] clickcd matches 1.. run return run function item:use/click/fail
execute if score @s[tag=offhand,tag=!return_used,tag=!usinger] offclickcd matches 1.. run return run function item:use/click/fail
scoreboard players set @s[tag=!offhand,tag=!return_used,tag=!usinger] clickcd 2
scoreboard players set @s[tag=offhand,tag=!return_used,tag=!usinger] offclickcd 3
#数据
function item:use/data
#
execute if entity @s[tag=return_fail] run return run tag @s remove return_fail
#使用
function item:use/click/event with storage minecraft:item nbt