#数据值
data modify entity @s data.creature_id set value "chlorophyll_skull"
#属性
attribute @s minecraft:max_health base set 16
attribute @s minecraft:scale base set 0.9
attribute @s minecraft:movement_speed base set 0.22
#effect give @s minecraft:invisibility infinite 255 true
#装备
item replace entity @s weapon.offhand with minecraft:stick[minecraft:custom_model_data={strings:[\
"creature.hostial.chlorophyll_skull.offhand"]}]
function creature:hostial/chlorophyll_skull/hand
item replace entity @s armor.head with minecraft:azalea_leaves[minecraft:custom_model_data={strings:[\
"creature.hostial.chlorophyll_skull.head"]}]
execute if predicate condition:chance/chance30 run item replace entity @s armor.head with minecraft:flowering_azalea_leaves[minecraft:custom_model_data={strings:[\
"creature.hostial.chlorophyll_skull.head"]}]
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.chlorophyll_skull.name","color":"#e2ffc7","shadow_color":-8809904}]}