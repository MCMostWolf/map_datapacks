#数据值
data modify entity @s data.creature_id set value "verdure_knight"
#属性
attribute @s minecraft:max_health base set 100
attribute @s minecraft:scale base set 1.15
attribute @s minecraft:movement_speed base set 0.19
attribute @s minecraft:knockback_resistance base set 100
#effect give @s minecraft:invisibility infinite 255 true
#装备
item replace entity @s weapon.offhand with minecraft:shield[enchantment_glint_override=true]
item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:custom_model_data={strings:[\
"creature.hostial.verdure_knight.offhand"]},item_model="minecraft:iron_sword",enchantment_glint_override=true]
item replace entity @s armor.head with minecraft:chainmail_helmet[minecraft:custom_model_data={strings:[\
"creature.hostial.verdure_knight.head"]},\
minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:rib"}]
item replace entity @s armor.chest with minecraft:chainmail_chestplate[enchantment_glint_override=true,\
minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:flow"}]
item replace entity @s armor.feet with minecraft:chainmail_boots[minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:rib"}]
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.verdure_knight.name","color":"#e2ffc7","shadow_color":-8809904}]}
