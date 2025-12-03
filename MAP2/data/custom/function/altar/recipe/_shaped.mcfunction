$data modify storage minecraft:item temp set from storage minecraft:item custom.$(altar_recipe)_recipe.[0]
$data remove storage minecraft:item custom.$(altar_recipe)_recipe.[0]
scoreboard players set #temp1 temp 1
function custom:altar/recipe/shaped with storage minecraft:item
scoreboard players reset #temp1 temp
#合成成功
execute store result score #altar_passed altar.recipe run execute if entity @e[distance=..16,type=minecraft:item_display,tag=altar.pass]
function custom:altar/recipe/craft with storage minecraft:item
tag @e[distance=..16,type=minecraft:item_display,tag=altar.pass] remove altar.pass