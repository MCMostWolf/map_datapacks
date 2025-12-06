#更改对话层级
scoreboard players reset @s effects
$scoreboard players set @s effects_level $(level)
tag @s remove talk_spawner.talking
tag @s remove talk_spawner.talk_end