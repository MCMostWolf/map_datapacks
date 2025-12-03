
$execute as @e[distance=..16,type=minecraft:item_display,tag=skill_traget] on vehicle if score @s id = #temp1 temp \
on passengers if entity @s[tag=skill_traget] if items entity @s contents *[custom_data~{"id":"$(temp)"}] run \
tag @s add altar.pass

$execute unless data storage minecraft:item custom.$(altar_recipe)_recipe.[0] run return fail

scoreboard players add #temp1 temp 1

$data modify storage minecraft:item temp set from storage minecraft:item custom.$(altar_recipe)_recipe.[0]
$data remove storage minecraft:item custom.$(altar_recipe)_recipe.[0]

function custom:altar/recipe/shaped with storage minecraft:item