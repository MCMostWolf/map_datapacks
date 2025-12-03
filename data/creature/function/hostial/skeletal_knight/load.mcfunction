#数据值
data modify entity @s data.creature_id set value "skeletal_knight"
#属性
attribute @s minecraft:max_health base set 16
attribute @s minecraft:movement_speed base set 0.21
attribute @s minecraft:knockback_resistance base set 100
#effect give @s minecraft:invisibility infinite 255 true
#装备
item replace entity @s weapon.offhand with minecraft:shield
item replace entity @s weapon.mainhand with minecraft:stone_sword[minecraft:custom_model_data={strings:[\
"creature.hostial.skeletal_knight.offhand"]},item_model="minecraft:iron_sword"]
item replace entity @s armor.head with minecraft:chainmail_helmet[minecraft:custom_model_data={strings:[\
"creature.hostial.skeletal_knight.head"]}]
execute if predicate condition:chance/chance30 run item replace entity @s armor.chest with minecraft:chainmail_chestplate
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.skeletal_knight.name","color":"#e2ffc7","shadow_color":-8809904}]}