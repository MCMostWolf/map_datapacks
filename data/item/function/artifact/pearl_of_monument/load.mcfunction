item replace entity @s armor.head with minecraft:acacia_boat[item_model="minecraft:air",\
minecraft:enchantments={"item:pearl_of_monument":1}]
execute rotated ~ 0 run function item:artifact/pearl_of_monument/render
rotate @s ~ 0
forceload add ~6 ~6 ~-6 ~-6
tag @s add pom
tag @s remove loading

tp @s ~ ~2 ~