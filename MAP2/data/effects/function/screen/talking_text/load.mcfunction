$scoreboard players set @s effects_time $(time)
scoreboard players operation @s effects_time_kill = @s effects_time
scoreboard players add @s effects_time_kill 5
scoreboard players reset @s effects
tag @s remove effects.load