data modify storage minecraft:item custom append from storage minecraft:item temp.[0]
data modify storage minecraft:item custom.[-1].Slot set from storage minecraft:temp cnt
execute store result storage minecraft:temp cnt int 1 run scoreboard players add #temp1 temp 1
data remove storage minecraft:item temp.[0]
execute if data storage minecraft:item temp.[0] run return run function item:prop/shulker_box/quick_inventory/slot_append
scoreboard players reset #temp1 temp