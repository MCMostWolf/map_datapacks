execute if score @s lj.death.V.death_ind matches 1.. run function lj.death:drop
scoreboard players set @s lj.death.V.death_ind 0
execute unless score @s lj.death.TRIGGER matches 0 run function lj.death:tp
scoreboard players set @s lj.death.TRIGGER 0
scoreboard players enable @s lj.death.TRIGGER
execute if entity @s[tag=lj.death.T.respawn] run function lj.death:respawn