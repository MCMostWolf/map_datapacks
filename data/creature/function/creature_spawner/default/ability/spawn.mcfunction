#生成模式
tag @s add creature_spawner.spawning
$scoreboard players set @s skill_cnt $(spawn_creature_count)
#效果
particle minecraft:flash{color:-32768} ~ ~ ~ 0 0 0 0 0 normal