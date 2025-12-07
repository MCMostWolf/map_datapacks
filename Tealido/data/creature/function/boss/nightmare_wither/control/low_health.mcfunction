execute if entity @s[tag=low_health.started] run return fail
execute if entity @s run data modify entity @s Health set value 5
execute if entity @s run scoreboard players set @s skill 5
tag @s remove phase2_started
tag @s add low_health.started