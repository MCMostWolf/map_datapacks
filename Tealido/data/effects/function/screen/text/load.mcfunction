$scoreboard players set @s effects_time $(time)
scoreboard players operation @s effects_time_kill = @s effects_time
scoreboard players add @s effects_time_kill 5
scoreboard players reset @s effects
tag @s remove effects.load
execute unless score #screen_text.mode effects matches 2.. run return fail
data modify entity @s view_range set value 2
scoreboard players reset #screen_text.mode effects