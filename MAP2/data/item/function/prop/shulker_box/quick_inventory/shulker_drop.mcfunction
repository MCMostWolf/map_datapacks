data modify storage minecraft:item drop set from storage minecraft:item temp1.[0]
data remove storage minecraft:item temp1.[0]
function item:drop with storage minecraft:item drop
execute if data storage minecraft:item temp1.[-1] run return run function item:prop/shulker_box/quick_inventory/shulker_drop