ride @s dismount
ride @n[distance=..1,type=minecraft:armor_stand,tag=effects.load] mount @s
execute unless score #screen_text.mode effects matches 2.. run return fail
data modify entity @s view_range set value 2
scoreboard players reset #screen_text.mode effects