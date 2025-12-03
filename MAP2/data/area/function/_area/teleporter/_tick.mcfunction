execute if entity @s[tag=enble] run function area:_area/teleporter/enble
execute if entity @s[tag=enbled] \
on passengers at @s run function area:_area/teleporter/enble/idle
execute on passengers if entity @s[type=minecraft:interaction] \
run function area:_area/teleporter/interaction/_tick