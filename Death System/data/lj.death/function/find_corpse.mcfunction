execute as @a at @s run function lj.death:find_corpse.1
tellraw @p[tag=lj.death.T.pickup_player] {translate:"lj.death.find",color:"aqua",with:[{"selector":"@p[tag=lj.death.T.find_corpse_owner]"}]}
tellraw @p[tag=lj.death.T.pickup_player] {translate:"lj.death.link_sent",with:[{"selector":"@p[tag=lj.death.T.find_corpse_owner]"}]}
data remove storage lj.death:cache corpse_id
data remove storage lj.death:cache tp_data
data modify storage lj.death:cache corpse_id set from entity @s data."lj.death:corpse_id"
data modify storage lj.death:cache tp_data.x set from entity @s Pos[0]
data modify storage lj.death:cache tp_data.y set from entity @s Pos[1]
data modify storage lj.death:cache tp_data.z set from entity @s Pos[2]
data modify storage lj.death:cache tp_data.dim set from entity @p[tag=lj.death.T.pickup_player] Dimension
execute store result storage lj.death:cache tp_data.uid int 1 run scoreboard players get @s lj.death.V.death_pile_uid
function lj.death:find_corpse.3 with storage lj.death:cache {}
data remove entity @s attack.player
tag @s remove lj.death.T.interaction_tmp
tag @a remove lj.death.T.find_corpse_owner
playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1