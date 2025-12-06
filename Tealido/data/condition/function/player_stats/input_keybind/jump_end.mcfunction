execute unless entity @s[tag=condition.jump_end] run return run tag @s add condition.jump_end
tag @s remove condition.jumping
tag @s remove condition.jump_start
tag @s remove condition.jump_end
scoreboard players reset @s jump_time