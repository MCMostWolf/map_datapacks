#数据值
data modify entity @s data.creature_id set value "silent_archer"
tag @s add silent_archer
#属性
attribute @s minecraft:max_health base set 10
attribute @s minecraft:scale base set 0.9
#武器
item replace entity @s weapon.mainhand with minecraft:bow[minecraft:charged_projectiles=[{id:"acacia_boat"}],minecraft:item_model="crossbow",\
minecraft:enchantments={"minecraft:multishot":1}]
item replace entity @s weapon.offhand with minecraft:netherite_hoe
item replace entity @s armor.head with minecraft:netherite_helmet[minecraft:dyed_color=1,minecraft:trim={material:"minecraft:amethyst","pattern":"flow"}]
item replace entity @s armor.chest with minecraft:netherite_chestplate[minecraft:dyed_color=1,minecraft:trim={material:"minecraft:amethyst","pattern":"flow"}]
item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:dyed_color=4723560,minecraft:trim={material:"minecraft:netherite","pattern":"flow"}]
item replace entity @s armor.feet with minecraft:leather_boots[minecraft:dyed_color=4723560,minecraft:trim={material:"minecraft:netherite","pattern":"flow"}]
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.silent_archer.name","color":"#17002f","shadow_color":-9043746}]}
team join nightmare
