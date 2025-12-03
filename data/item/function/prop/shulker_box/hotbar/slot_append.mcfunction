$data modify storage minecraft:item custom append value {item:{},slot:$(cnt)}
data modify storage minecraft:item custom.[-1].item set from storage minecraft:item temp.[0]
execute store result storage minecraft:temp cnt int 1 run scoreboard players add #temp1 temp 1
data remove storage minecraft:item temp.[0]
execute if data storage minecraft:item temp.[0] run return run function item:prop/shulker_box/hotbar/slot_append with storage minecraft:temp
scoreboard players reset #temp1 temp