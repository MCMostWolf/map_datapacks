execute unless data entity @s item.components."minecraft:custom_data"."altar_recipe".[] run return fail

execute on vehicle run scoreboard players operation #temp uid = @s uid

execute as @e[distance=..16,type=minecraft:item_display,tag=altar.base] if score @s uid = #temp uid on passengers if entity @s[tag=altar.item] run tag @s add skill_traget
data modify storage minecraft:item custom set from entity @s item.components."minecraft:custom_data"
function custom:altar/recipe/search
execute as @e[distance=..16,type=minecraft:item_display,tag=altar.base] if score @s uid = #temp uid on passengers if entity @s[tag=altar.item] run tag @s remove skill_traget