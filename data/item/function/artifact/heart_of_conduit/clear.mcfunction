execute as @e[type=#minecarts,tag=hoc.glowing] run data modify entity @s Glowing set value 0b
execute as @e[type=#minecarts,tag=hoc.glowing] run tag @s remove hoc.glowing