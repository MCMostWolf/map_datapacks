#被破坏
execute if entity @s[tag=creature_spawner.broken] run return run function creature:creature_spawner/default/control/break
execute unless block ~ ~ ~ spawner run return run function creature:creature_spawner/default/event/break
#动画
rotate @s ~8 ~

execute if predicate condition:tick/20t run function creature:creature_spawner/default/particle

execute if entity @s[tag=creature_spawner.spawning] run function creature:creature_spawner/default/control/spawn/_tick
#倒计时效果
execute if score @s skill_cd matches 20 run playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 0.8 1
execute if score @s skill_cd matches 20 run function creature:creature_spawner/default/particle/circle1
execute if score @s skill_cd matches 10 run playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 0.8 1.4
execute if score @s skill_cd matches 10 run function creature:creature_spawner/default/particle/circle2
execute if score @s skill_cd matches 1 run function creature:creature_spawner/default/particle/circle3
execute if score @s skill_cd matches 1 run playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 0.8 1.8
execute if score @s skill_cd matches 1 \
on passengers run item modify entity @s contents [{function:"minecraft:set_custom_model_data",strings:{mode:"replace_all",values:["block.creature_spawner.default_active"]}}]
#释放
execute if score @s skill_cd matches 1.. run return run scoreboard players remove @s skill_cd 1
execute if predicate condition:tick/20t if entity @a[distance=..20,tag=condition.playing] run function creature:creature_spawner/default/event/range with entity @s data