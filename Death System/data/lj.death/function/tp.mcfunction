data modify storage lj.death:cache UUID set from entity @s UUID
execute store result storage lj.death:cache corpse_id int 1 run scoreboard players get @s lj.death.TRIGGER
data remove storage lj.death:cache tp_data
function lj.death:tp.1 with storage lj.death:cache {}
execute unless data storage lj.death:cache tp_data run return run tellraw @s {translate:"lj.death.tp_expire",color:"red"}
execute unless function lj.death:tp.4 run return run tellraw @s {translate:"lj.death.tp_expire",color:"red"}
execute store result storage lj.death:cache tp_data.x int 1 run data get storage lj.death:cache tp_data.x
execute store result storage lj.death:cache tp_data.y int 1 run data get storage lj.death:cache tp_data.y
execute store result storage lj.death:cache tp_data.z int 1 run data get storage lj.death:cache tp_data.z
function lj.death:tp.2 with storage lj.death:cache tp_data
execute at @s run tp @s @n[type=minecraft:interaction,distance=..1,tag=lj.death.T.interaction]
tag @s add lj.death.T.tp_player
execute at @s run function lj.death:tp.3 with storage lj.death:cache tp_data
tag @s remove lj.death.T.tp_player
execute at @s run function lj.death:pickup