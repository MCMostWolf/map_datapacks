#物品生成
summon minecraft:item ~ ~ ~ {Item:{id:"acacia_boat",components:{"minecraft:item_model":"minecraft:air"}},Age:600,PickupDelay:-1,Invulnerable:1b,Tags:["loading"]}

item replace entity @n[distance=..0.01,type=minecraft:item,tag=loading] contents from entity @s contents

data modify entity @n[distance=..0.01,type=minecraft:item,tag=loading] data.spawn_creature_id set from entity @s data.spawn_creature_id

$execute store result score #random_temp temp run random value -$(spawn_range)..$(spawn_range)
$execute store result score #random_temp1 temp run random value -$(spawn_range)..$(spawn_range)

execute as @n[distance=..0.01,type=minecraft:item,tag=loading] run function creature:creature_spawner/nightmare/control/summon/load


scoreboard players remove @s skill_cnt 1
#效果

playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 0.2 2
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.3 3 normal