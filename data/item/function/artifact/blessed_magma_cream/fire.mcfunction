execute positioned ~ ~0.2 ~ run particle minecraft:flame ^-0.2 ^ ^ 0 0 0 0 0 normal
execute positioned ~ ~0.2 ~ run particle minecraft:flame ^0.2 ^ ^ 0 0 0 0 0 normal
particle minecraft:small_flame ~ ~0.7 ~ 0.3 0.7 0.3 0.01 1 normal
execute unless score @s aft.bmc matches 1 run return fail
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.4 2