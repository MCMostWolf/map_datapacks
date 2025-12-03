execute unless score #altar_passed altar.recipe = #altar_pass altar.recipe run return fail

data modify entity @s data.altar_recipe set from storage minecraft:item altar_recipe

tag @s add altar.crafting

tag @e[distance=..16,type=minecraft:item_display,tag=altar.pass] add altar.crafting

execute as @e[distance=..16,type=minecraft:item_display,tag=altar.pass] store result score @s tick run random value -20..80