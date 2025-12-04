tag @s add lj.death.T.respawn
execute unless predicate lj.death:drop run return 0
tag @s add lj.death.T.dropping_player
execute store result storage lj.death:cache corpse_id int 1 run scoreboard players add @s lj.death.V.player_ub 1
scoreboard players add $lj.death.V.death_pile_uid_ub lj.INT 1
summon minecraft:interaction ~ ~ ~ {height:0.5,width:0.5,response:true,Tags:["lj.death.T.interaction","lj.death.T.interaction_tmp"]}
execute store result entity @n[type=minecraft:interaction,distance=..1,tag=lj.death.T.interaction_tmp] data."lj.death:corpse_id" int 1 run scoreboard players get @s lj.death.V.player_ub
scoreboard players operation @n[type=minecraft:interaction,distance=..1,tag=lj.death.T.interaction_tmp] lj.death.V.death_pile_uid = $lj.death.V.death_pile_uid_ub lj.INT
data modify entity b9cad64d-fef9-0d07-2ec0-6bc1836b076a text set value {"translate":"lj.death.corpse",with:[{"selector":"@p[tag=lj.death.T.dropping_player]"}]}
data modify entity @n[type=minecraft:interaction,distance=..1,tag=lj.death.T.interaction_tmp] CustomName set from entity b9cad64d-fef9-0d07-2ec0-6bc1836b076a text
data modify entity @n[type=minecraft:interaction,distance=..1,tag=lj.death.T.interaction_tmp] data."lj.death:owner" set from entity @s UUID
function lj.death:drop.3 with entity b9cad64d-fef9-0d07-2ec0-6bc1836b076a text.with.[0]
scoreboard players operation @n[type=minecraft:item_display,distance=..1,tag=lj.death.T.display_tmp] lj.death.V.death_pile_uid = $lj.death.V.death_pile_uid_ub lj.INT
tp @n[type=minecraft:item_display,distance=..1,tag=lj.death.T.display_tmp] ~ ~0.5 ~ facing ^ ^ ^-1
data modify entity @n[tag=lj.death.T.display_tmp] Rotation[1] set value 0
tag @e[type=minecraft:interaction,distance=..1] remove lj.death.T.interaction_tmp
tag @e[type=minecraft:item_display,distance=..1] remove lj.death.T.display_tmp
data modify storage lj.death:cache corpse_new set value {extra:[]}
function #lj.death:on_drop
function lj.death:drop.1 {slot:'hotbar.0'}
function lj.death:drop.1 {slot:'hotbar.1'}
function lj.death:drop.1 {slot:'hotbar.2'}
function lj.death:drop.1 {slot:'hotbar.3'}
function lj.death:drop.1 {slot:'hotbar.4'}
function lj.death:drop.1 {slot:'hotbar.5'}
function lj.death:drop.1 {slot:'hotbar.6'}
function lj.death:drop.1 {slot:'hotbar.7'}
function lj.death:drop.1 {slot:'hotbar.8'}
function lj.death:drop.1 {slot:'inventory.0'}
function lj.death:drop.1 {slot:'inventory.1'}
function lj.death:drop.1 {slot:'inventory.2'}
function lj.death:drop.1 {slot:'inventory.3'}
function lj.death:drop.1 {slot:'inventory.4'}
function lj.death:drop.1 {slot:'inventory.5'}
function lj.death:drop.1 {slot:'inventory.6'}
function lj.death:drop.1 {slot:'inventory.7'}
function lj.death:drop.1 {slot:'inventory.8'}
function lj.death:drop.1 {slot:'inventory.9'}
function lj.death:drop.1 {slot:'inventory.10'}
function lj.death:drop.1 {slot:'inventory.11'}
function lj.death:drop.1 {slot:'inventory.12'}
function lj.death:drop.1 {slot:'inventory.13'}
function lj.death:drop.1 {slot:'inventory.14'}
function lj.death:drop.1 {slot:'inventory.15'}
function lj.death:drop.1 {slot:'inventory.16'}
function lj.death:drop.1 {slot:'inventory.17'}
function lj.death:drop.1 {slot:'inventory.18'}
function lj.death:drop.1 {slot:'inventory.19'}
function lj.death:drop.1 {slot:'inventory.20'}
function lj.death:drop.1 {slot:'inventory.21'}
function lj.death:drop.1 {slot:'inventory.22'}
function lj.death:drop.1 {slot:'inventory.23'}
function lj.death:drop.1 {slot:'inventory.24'}
function lj.death:drop.1 {slot:'inventory.25'}
function lj.death:drop.1 {slot:'inventory.26'}
function lj.death:drop.1 {slot:'armor.feet'}
function lj.death:drop.1 {slot:'armor.legs'}
function lj.death:drop.1 {slot:'armor.chest'}
function lj.death:drop.1 {slot:'armor.head'}
function lj.death:drop.1 {slot:'weapon.offhand'}
function lj.death:drop.1 {slot:'player.cursor'}
function lj.death:drop.1 {slot:'player.crafting.0'}
function lj.death:drop.1 {slot:'player.crafting.1'}
function lj.death:drop.1 {slot:'player.crafting.2'}
function lj.death:drop.1 {slot:'player.crafting.3'}
data modify storage lj.death:cache UUID set from entity @s UUID
function lj.death:drop.2 with storage lj.death:cache {}
xp set @s 0 levels
xp set @s 0 points
tag @s remove lj.death.T.dropping_player