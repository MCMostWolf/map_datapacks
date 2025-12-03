particle minecraft:totem_of_undying ~ ~0.5 ~ 0 0 0 0.1 10 normal
playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 1 1.3
execute store result entity @s Motion.[0] double 0.025 run data get entity @s Motion.[0] 100
execute store result entity @s Motion.[1] double 0.012 run data get entity @s Motion.[1] 100
execute store result entity @s Motion.[2] double 0.025 run data get entity @s Motion.[2] 100
scoreboard players set @s skill -50