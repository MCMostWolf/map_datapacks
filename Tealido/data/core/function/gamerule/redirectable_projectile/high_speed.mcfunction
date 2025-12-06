execute store result entity @s Motion.[0] float 0.001 run data get entity @s Motion.[0] 2500
execute store result entity @s Motion.[1] float 0.001 run data get entity @s Motion.[1] 2500
execute store result entity @s Motion.[2] float 0.001 run data get entity @s Motion.[2] 2500
data merge entity @s {crit:1b}
execute at @s run particle minecraft:sweep_attack ~ ~-0.5 ~ 0 0 0 0.1 0 normal
execute at @s run playsound minecraft:item.armor.equip_turtle player @a ~ ~ ~ 1 1.6
execute at @s run playsound minecraft:item.armor.equip_turtle player @a ~ ~ ~ 1 1.6
execute at @s run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1.3
execute at @s run playsound entity.player.attack.sweep player @a ~ ~ ~ 0.6 1.2
rotate @s ~180 ~