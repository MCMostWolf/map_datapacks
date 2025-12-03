#数据值
data modify entity @s data.creature_id set value "floral_remains"
#属性

#装备
item replace entity @s weapon.mainhand with minecraft:bow
execute if predicate condition:chance/chance30 run item replace entity @s armor.head with \
minecraft:spore_blossom[minecraft:custom_model_data={strings:["creature.hostial.bogged.head"]}]
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.floral_remains.name","color":"#e2ffc7","shadow_color":-8809904}]}