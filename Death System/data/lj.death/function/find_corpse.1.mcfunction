data modify storage lj.death:cache UUID_ set from entity @s UUID
execute unless function lj.death:find_corpse.2 run tag @s add lj.death.T.find_corpse_owner