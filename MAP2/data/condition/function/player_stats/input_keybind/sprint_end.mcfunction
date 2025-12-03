execute unless entity @s[tag=condition.sprint_end] run return run tag @s add condition.sprint_end
tag @s remove condition.sprinting
tag @s remove condition.sprint_start
tag @s remove condition.sprint_end
scoreboard players reset @s sprint_time