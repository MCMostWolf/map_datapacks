scoreboard players add @s jump_time 1
tag @s add condition.jumping
execute unless entity @s[tag=condition.jump_start] if score @s jump_time matches ..1 run return run tag @s add condition.jump_start
tag @s remove condition.jump_start