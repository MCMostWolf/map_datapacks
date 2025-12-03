
$data modify storage item temp set from storage minecraft:item custom.$(altar_recipe)_recipe.[0]
$data remove storage minecraft:item custom.$(altar_recipe)_recipe.[0]

$execute store result score #altar_pass altar.recipe run execute if data storage minecraft:item custom.$(altar_recipe)_recipe.[]

execute if data storage item {"temp":"shaped"} run return run function custom:altar/recipe/_shaped with storage minecraft:item
function custom:altar/recipe/_shapeless with storage minecraft:item