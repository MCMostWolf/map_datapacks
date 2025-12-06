#tick盔甲架
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["loading"],Silent:1b}
ride @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] mount @s

tag @s remove loading
tag @s add loaded

execute on passengers run tag @s remove loading
execute on passengers run tag @s add loaded

execute on passengers run item replace entity @s armor.head with acacia_boat[minecraft:item_model="minecraft:air",enchantments={"creature:tick/creature_spawner/nightmare_summon":1}]

#随机动量
execute store result entity @s Motion.[0] double 0.001 run scoreboard players get #random_temp temp
execute store result entity @s Motion.[1] double 0.001 run random value 100..300
execute store result entity @s Motion.[2] double 0.001 run scoreboard players get #random_temp1 temp