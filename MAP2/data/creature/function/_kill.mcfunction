execute as @e[tag=hostial] at @s run particle dust{color:11796480,scale:4} ~ ~1 ~ 0.4 0.7 0.4 0 20 force
execute as @e[tag=hostial] at @s run playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 1.2
execute as @e[tag=hostial] at @s run tp ~ ~-100 ~
kill @e[tag=hostial]