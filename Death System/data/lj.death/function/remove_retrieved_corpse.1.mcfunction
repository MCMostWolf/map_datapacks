scoreboard players operation $lj.death.V.remove.corpse_id_lb lj.INT = @s lj.death.V.player_lb
data modify storage lj.death:cache UUID set from entity @s UUID
execute as @e[type=minecraft:interaction,tag=lj.death.T.interaction] at @s run function lj.death:remove_retrieved_corpse.2
scoreboard players set $lj.death.V.remove.corpse_id_lb lj.INT 0
scoreboard players set $lj.death.V.remove.corpse_id lj.INT 0