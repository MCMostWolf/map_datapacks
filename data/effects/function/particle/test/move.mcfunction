#execute if predicate mobs:tick/10t store result score @s particle run random value 3..4
execute unless score @s particle_type matches 5 run teleport @s ^0.2 ^ ^0.02
execute if score @s particle_type matches 5 run teleport @s ^0.2 ^ ^0.02
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 0 force
execute if score @s particle_type matches 5 if score @s particle matches 40 if predicate mobs:tick/4t positioned ^ ^ ^-15 run function effects:particle/test/_spawn