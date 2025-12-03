#数据值
data modify entity @s data.creature_id set value "ch.0/mushroom_zombie"
#属性
attribute @s minecraft:max_health base set 16
#装备
item replace entity @s armor.head with minecraft:brown_mushroom[minecraft:custom_model_data={strings:["creature.ch.0.mushroom_head"]}]
#敌对通用
function creature:_creature/hostial/_load