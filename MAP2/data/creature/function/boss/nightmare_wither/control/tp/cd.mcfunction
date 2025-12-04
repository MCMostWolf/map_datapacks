
execute if score @s skill_time matches 21 run tp @s ~ ~-2 ~
execute unless score @s skill_time matches 36.. run return fail
function creature:boss/nightmare_wither/control/ability_reset