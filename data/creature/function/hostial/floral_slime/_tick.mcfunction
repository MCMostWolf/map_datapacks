execute if predicate condition:tick/10t run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.3 0.3 0.3 0.1 3 normal
execute if predicate condition:tick/10t on passengers at @s run rotate @s ~40 0
execute if predicate condition:tick/20t on passengers run rotate @s[tag=hat] ~ 0
tag @s add skill_user
execute if predicate condition:entity_stats/high_speed_movement positioned ~-0.75 ~-0.5 ~-0.75 if entity @e[dx=0.5,dy=0,dz=0.5,type=minecraft:player,tag=condition.playing] \
run damage @s 20 minecraft:magic
execute if predicate condition:entity_stats/high_speed_movement positioned ~-0.75 ~-0.5 ~-0.75 if entity @e[dx=0.5,dy=0,dz=0.5,type=!#minecraft:noplayerne,tag=hostial,tag=!skill_user] \
run damage @s 20 minecraft:magic
tag @s remove skill_user