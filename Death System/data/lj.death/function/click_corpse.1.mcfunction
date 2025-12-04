execute unless data entity @s attack.player run return 0
tag @s add lj.death.T.interaction_tmp
data remove storage lj.death:cache corpse_id
data remove storage lj.death:cache UUID
data modify storage lj.death:cache UUID set from entity @s attack.player
execute if function lj.death:click_corpse.2 run return run function lj.death:find_corpse
data modify storage lj.death:cache corpse_id set from entity @s data."lj.death:corpse_id"
execute as @p[tag=lj.death.T.pickup_player] at @s run function lj.death:pickup
execute positioned ~ ~0.5 ~ as @e[type=minecraft:item_display,distance=..2,tag=lj.death.T.display] if score @s lj.death.V.death_pile_uid = @n[type=minecraft:interaction,distance=..2,tag=lj.death.T.interaction_tmp] lj.death.V.death_pile_uid run kill @s
kill @s