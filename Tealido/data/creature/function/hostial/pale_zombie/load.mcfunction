#数据值
data modify entity @s data.creature_id set value "pale_zombie"
#属性
attribute @s minecraft:max_health base set 17
attribute @s minecraft:scale base set 1
#effect give @s minecraft:invisibility infinite 255 true
#装备
item replace entity @s weapon.offhand with minecraft:dried_kelp[minecraft:custom_model_data={strings:[\
"creature.hostial.pale_zombie.offhand"]}]
function creature:hostial/chlorophyll_skull/hand
item replace entity @s armor.head with minecraft:skeleton_skull[minecraft:custom_model_data={strings:[\
"creature.hostial.pale_zombie.head"]}]
execute if predicate condition:chance/chance30 run item replace entity @s armor.head with minecraft:pale_oak_leaves[minecraft:custom_model_data={strings:[\
"creature.hostial.pale_zombie.head"]}]
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:dyed_color=10533024,minecraft:trim={material:"minecraft:iron",pattern:"minecraft:coast"}]
item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:dyed_color=10533024,minecraft:trim={material:"minecraft:iron",pattern:"minecraft:coast"}]
item replace entity @s armor.feet with minecraft:leather_boots[minecraft:dyed_color=10533024,minecraft:trim={material:"minecraft:iron",pattern:"minecraft:coast"}]
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.pale_zombie.name","color":"#828580","shadow_color":-14144984}]}