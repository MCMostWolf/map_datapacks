data modify storage minecraft:item custom insert 0 from storage minecraft:item temp.[-1].item
data remove storage minecraft:item temp.[-1]
execute if data storage minecraft:item temp.[-1] run return run function item:prop/shulker_box/box_to_bundle