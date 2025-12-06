
execute if function area:_area/teleporter/interaction/debug on vehicle run tag @s add enble
execute if entity @s[tag=!enbled] run return run function area:_area/teleporter/interaction/fail
execute on target at @s run function area:_area/teleporter/interaction/effects
function area:_area/teleporter/interaction/tp with entity @s data.tp_pos
execute on target at @s run function area:_area/teleporter/interaction/effects
data remove entity @s interaction