execute if score @s lj.death.V.player_ub <= @s lj.death.V.player_lb run return 0
execute store result storage lj.death:cache corpse_id int 1 run scoreboard players add @s lj.death.V.player_lb 1
data modify storage lj.death:cache UUID set from entity @s UUID
execute if function lj.death:retrieve.1 run function lj.death:pickup
function lj.death:retrieve