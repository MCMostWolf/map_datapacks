scoreboard players reset @s skill_time
scoreboard players reset @s skill
data modify entity @s NoAI set value 0b
tag @s remove silent
tag @s remove no_ai
tag @s remove unmove
tag @s remove invisible
execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:20}