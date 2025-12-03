#item replace entity @s armor.head with minecraft:acacia_boat[minecraft:item_model="minecraft:air",minecraft:enchantments={"custom:altar/trail":1}]
#data modify entity @s data set from storage minecraft:item temp
tag @s remove loading
execute store result score @s skill_cnt run random value 0..4
execute store result score @s skill_cnt2 run random value 0..4
tp ~ ~0.7 ~