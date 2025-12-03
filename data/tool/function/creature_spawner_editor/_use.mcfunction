advancement revoke @s only tool:creature_spawner_editor/use
execute if entity @s[tag=ad.loading] run return fail
#单次触发
tag @s add ad.loading
#数据导入/初始化
execute store result storage minecraft:temp uid int 1 run scoreboard players get @s uid
function tool:creature_spawner_editor/control/data_get with storage minecraft:temp
#
execute unless data storage minecraft:tool creature_spawner run \
data merge storage tool {creature_spawner:\
{spawn_range:1,active_range:1,max_spawner_cd:2,min_spawner_cd:1,\
spawn_count:1,spawn_creature_count:1,spawn_creature_id:"zombie",creature_spawner_type:"default"}}

#操作
function tool:creature_spawner_editor/control/use

#数据返回
function tool:creature_spawner_editor/control/data_store with storage minecraft:temp