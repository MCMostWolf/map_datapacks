$tp @s $(Pos)
effect give @s resistance 5 4 true
execute at @s run playsound item.totem.use player @a ~ ~ ~
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 2 2 2 0 100 force