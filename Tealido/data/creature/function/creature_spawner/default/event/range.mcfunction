#扫描敌人
#转data
execute store result score @s int run data get entity @s data.spawn_count
#效果
particle trial_spawner_detection ~ ~-0.5 ~ 0.5 0 0.5 0 15 normal
#生成
$execute store result score #temp temp run execute if entity @e[distance=..$(active_range),tag=hostial,type=!#noplayerne]
execute if score #temp temp >= @s int run return fail
$execute unless entity @a[distance=..$(active_range),tag=condition.playing] run return fail
function creature:creature_spawner/default/ability/spawn with entity @s data
#CD
$execute store result score @s skill_cd run random value $(min_spawner_cd)..$(max_spawner_cd)