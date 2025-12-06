rotate @s ~4 0
execute if entity @s[tag=have_item] run particle minecraft:enchant ~ ~0.5 ~ 0.2 0 0.2 0 1 normal
execute if entity @s[tag=have_item,tag=altar.core_1] run function custom:altar/animation/spin/core_particle
execute if items entity @s contents * on vehicle run tag @s add have_item
execute if items entity @s contents * run return run tag @s add have_item
execute on vehicle run tag @s remove have_item
tag @s remove have_item