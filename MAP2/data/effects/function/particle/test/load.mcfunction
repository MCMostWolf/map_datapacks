loot replace entity @s armor.chest loot effects:particle/test
scoreboard players reset @s particle
tag @s remove effects.load
execute unless score #particle particle_type matches 1.. run return fail
scoreboard players operation @s particle_type = #particle particle_type
scoreboard players remove #particle particle_type 1