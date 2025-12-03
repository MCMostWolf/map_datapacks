#重置对话
scoreboard players reset @s effects
tag @s remove talk_spawner.talking
tag @s remove talk_spawner.talk_load
tag @s remove talk_spawner.talk_end
execute on passengers if entity @s[type=minecraft:interaction] run data remove entity @s interaction
execute on passengers if entity @s[type=minecraft:interaction] run data modify entity @s response set value 1b