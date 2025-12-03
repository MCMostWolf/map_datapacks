
data remove storage minecraft:item temp
data remove storage minecraft:item custom

data modify storage minecraft:item temp insert 0 from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents".[]
data modify storage minecraft:item temp insert 0 from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle".[]
data remove entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents".[]
data remove entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle".[]
data modify storage minecraft:temp cnt set value 0
function item:prop/shulker_box/hotbar/slot_append with storage minecraft:temp
#转封
data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.id set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:item_model"
data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:container" set from storage minecraft:item custom