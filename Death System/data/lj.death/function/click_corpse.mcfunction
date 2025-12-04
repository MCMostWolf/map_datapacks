advancement revoke @s only lj.death:click_corpse
tag @s add lj.death.T.pickup_player
execute as @e[type=minecraft:interaction,tag=lj.death.T.interaction] at @s run function lj.death:click_corpse.1
tag @s remove lj.death.T.pickup_player