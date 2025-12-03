
execute at @s run tp ^ ^ ^0.2
execute at @s run function custom:altar/animation/trail/move
execute at @s run function custom:altar/animation/trail/move1
particle minecraft:sculk_charge_pop ^ ^ ^ 0 -10000000 0 1000000 0 normal
#particle minecraft:ominous_spawning ^ ^ ^ 0 -10000000 0 000000 0 normal
particle minecraft:bubble_pop ^ ^ ^ 0 -10000000 0 000000 0 normal
#function custom:altar/animation/trail/particle with entity @s data
#execute unless function custom:altar/animation/trail/close run return fail
#kill @s