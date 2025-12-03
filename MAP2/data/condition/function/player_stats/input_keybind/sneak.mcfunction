scoreboard players add @s sneak_time 1
tag @s add condition.sneaking
execute unless entity @s[tag=condition.sneak_start] if score @s sneak_time matches ..1 run return run tag @s add condition.sneak_start
tag @s remove condition.sneak_start