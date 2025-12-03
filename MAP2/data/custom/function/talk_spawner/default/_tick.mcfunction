#选中时粒子
execute if predicate condition:tick/10t on vehicle if entity @s[tag=talk_spawner.talk_load,tag=!talk_spawner.talk_end] \
run particle dust_color_transition{from_color:7077887,scale:1,to_color:14016477} ~ ~0.5 ~ 0.3 0.3 0.3 0.05 4 normal
#交互事件
execute on vehicle on passengers if entity @s[type=minecraft:interaction] if function condition:entity_stats/has_traget \
run return run function custom:talk_spawner/default/interact
#靠近时粒子
execute positioned ~ ~0.5 ~ run function custom:talk_spawner/_tick
#execute unless entity @a[distance=..7] unless entity @s[tag=talk_spawner.talked] run return run function custom:talk_spawner/default/reset
#execute if entity @s[tag=!talk_spawner.talking] run return run scoreboard players reset @s effects
