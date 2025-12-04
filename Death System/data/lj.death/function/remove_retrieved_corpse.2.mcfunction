data modify storage lj.death:cache UUID_ set from entity @s data."lj.death:owner"
execute if function lj.death:remove_retrieved_corpse.3 run return 0
execute store result score $lj.death.V.remove.corpse_id lj.INT run data get entity @s data."lj.death:corpse_id"
execute if score $lj.death.V.remove.corpse_id lj.INT > $lj.death.V.remove.corpse_id_lb lj.INT run return 0
tag @s add lj.death.T.interaction_tmp
execute positioned ~ ~0.5 ~ as @e[type=minecraft:item_display,distance=..2,tag=lj.death.T.display] if score @s lj.death.V.death_pile_uid = @n[type=minecraft:interaction,distance=..2,tag=lj.death.T.interaction_tmp] lj.death.V.death_pile_uid run kill @s
kill @s