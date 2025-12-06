data modify storage minecraft:item altar_recipe set from storage minecraft:item custom.altar_recipe.[0]
function custom:altar/recipe/condition with storage minecraft:item
data remove storage minecraft:item custom.altar_recipe.[0]
execute if data storage minecraft:item custom.altar_recipe.[0] run return run function custom:altar/recipe/search