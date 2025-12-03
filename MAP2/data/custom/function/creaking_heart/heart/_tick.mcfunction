#条件
#冷却
execute if score @s cd matches 0.. run return run scoreboard players remove @s cd 1
#
execute unless predicate condition:tick/20t run return fail
execute unless block ~ ~ ~ minecraft:creaking_heart run return run kill @s
execute unless entity @p[distance=..16,tag=condition.playing] run return fail
execute on passengers on origin run return fail
#生成
scoreboard players set @s cd 60
execute at @e[distance=..10,type=minecraft:marker,tag=creaking_heart.spawnpoint,limit=1,sort=random] \
run function custom:creaking_heart/spawner/_spawn