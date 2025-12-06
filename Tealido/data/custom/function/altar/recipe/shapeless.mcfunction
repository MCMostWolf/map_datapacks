$execute as @e[distance=..16,type=minecraft:item_display,tag=skill_traget] if items entity @s contents *[custom_data~{"id":"$(temp)"}] run \
tag @s add altar.pass
$execute unless data storage minecraft:item custom.$(altar_recipe)_recipe.[0] run return fail

$data modify storage minecraft:item temp set from storage minecraft:item custom.$(altar_recipe)_recipe.[0]
$data remove storage minecraft:item custom.$(altar_recipe)_recipe.[0]

function custom:altar/recipe/shapeless with storage minecraft:item