scoreboard players add #temp1 temp 1
execute positioned ~-0.85 ~-0.85 ~-0.85 as @e[dx=0,dy=0,dz=0,type=!#noplayerne] positioned ~0.7 ~0.7 ~0.7 if entity @s[dx=0,dy=0,dz=0] run tag @s add atf_traget
particle minecraft:flame ^ ^ ^ 0 0 0 0.01 3 force
particle minecraft:wax_on ^ ^ ^0.2 0 0 0 0.1 2 force
particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ^ ^ ^0.2 0 0 0 0 0 force
particle minecraft:item{item:"minecraft:gold_ingot"} ^ ^ ^0.2 0 0 0 0.05 2 force
particle minecraft:small_flame ^ ^ ^0.25 0 0 0 0 0 force
execute unless score #temp1 temp matches 70.. positioned ^ ^ ^0.5 run return run function item:artifact/golden_fire/shoot
scoreboard players reset #temp1 temp
tag @s add atf_user
execute as @e[type=!#noplayerne,tag=atf_traget] at @s \
positioned ~-1 ~-1 ~-1 run tag @e[dx=1,dy=1,dz=1,type=!#noplayerne,tag=!atf_traget] add atf_traget
execute as @e[type=!#noplayerne,tag=atf_traget] run function item:artifact/golden_fire/damage
tag @s remove atf_user