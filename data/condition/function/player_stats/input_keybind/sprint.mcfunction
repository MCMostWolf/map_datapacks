scoreboard players add @s sprint_time 1
tag @s add condition.sprinting
execute unless entity @s[tag=condition.sprint_start] if score @s sprint_time matches ..1 run return run tag @s add condition.sprint_start
tag @s remove condition.sprint_start