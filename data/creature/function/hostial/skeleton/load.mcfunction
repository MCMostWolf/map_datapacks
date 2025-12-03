#数据值
data modify entity @s data.creature_id set value "skeleton"
#属性

#装备
item replace entity @s weapon.mainhand with minecraft:bow
#敌对通用
function creature:_creature/hostial/_load