#物品生成
summon minecraft:item ~ ~ ~ {Item:{id:"acacia_boat",components:{"minecraft:item_model":"minecraft:air"}},Age:600,PickupDelay:-1,Invulnerable:1b,Tags:["loading"]}

item replace entity @n[distance=..0.01,type=minecraft:item,tag=loading] contents from entity @s contents

data modify entity @n[distance=..0.01,type=minecraft:item,tag=loading] data.spawn_creature_id set from entity @s data.spawn_creature_id

$execute store result score #random_temp temp run random value -$(spawn_range)..$(spawn_range)
$execute store result score #random_temp1 temp run random value -$(spawn_range)..$(spawn_range)

execute as @n[distance=..0.01,type=minecraft:item,tag=loading] run function creature:creature_spawner/default/control/summon/load


scoreboard players remove @s skill_cnt 1
#效果

playsound minecraft:block.trial_spawner.spawn_item block @a ~ ~ ~ 0.7 1.4
playsound minecraft:entity.shulker_bullet.hurt block @a ~ ~ ~ 0.7 1.9
particle minecraft:lava ~ ~ ~ 0 0 0 0 0 normal