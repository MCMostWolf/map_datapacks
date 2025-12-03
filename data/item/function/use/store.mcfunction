$data modify storage minecraft:data_$(uid) item.using.data set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item
execute store result score #temp amount run data get entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item\
.components."minecraft:attribute_modifiers"[{type:"minecraft:luck",slot:"mainhand"}].amount 10000000
$execute store result storage minecraft:data_$(uid) item.using.unique_min double 0.0000001 run scoreboard players remove #temp amount 1
$execute store result storage minecraft:data_$(uid) item.using.unique_max double 0.0000001 run scoreboard players add #temp amount 2
$execute if entity @s[tag=!offhand] run return run data modify storage minecraft:data_$(uid) item.using.Select set from entity @s SelectedItemSlot
$data modify storage minecraft:data_$(uid) item.using.Select set value "off"