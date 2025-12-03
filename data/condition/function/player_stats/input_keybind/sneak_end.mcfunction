execute unless entity @s[tag=condition.sneak_end] run return run tag @s add condition.sneak_end
tag @s remove condition.sneaking
tag @s remove condition.sneak_start
tag @s remove condition.sneak_end
scoreboard players reset @s sneak_time