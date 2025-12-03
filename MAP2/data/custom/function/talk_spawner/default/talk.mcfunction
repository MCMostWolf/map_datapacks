#超出范围取消
execute unless entity @p[tag=interact_traget,distance=..5] run tag @p[tag=interact_traget] remove interact_traget
execute unless entity @p[tag=interact_traget,distance=..5] run return run function custom:talk_spawner/default/reset
#潜行继续
execute if entity @p[tag=interact_traget,tag=condition.sneak_start] run scoreboard players add @s effects 1
execute if entity @s[tag=talk_spawner.talk_load] if entity \
@p[tag=interact_traget,tag=condition.sneak_start] run tag @s remove talk_spawner.talk_load
execute if entity @s[tag=talk_spawner.talk_load] run return fail 
#对话
$function talk:$(talk)