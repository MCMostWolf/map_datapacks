#data modify storage minecraft:item custom set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"
#data modify storage minecraft:item custom.bundle_contents set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents"
#data remove entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:lore".[{translate:"item.shulker_box.lore.more"}]
execute unless items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents #minecraft:shulker_boxes_[minecraft:custom_data~{"in_hotbar":true}] run return fail
#转封
data modify storage minecraft:item id set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.id
data modify storage minecraft:item temp set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:container"
data remove entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:container"
data remove storage minecraft:item custom
function item:prop/shulker_box/box_to_bundle
item modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents \
    [\
        {\
            "function":"minecraft:set_item",\
            "item":"minecraft:bundle"\
        }\
    ]
data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:item_model" set from storage minecraft:item id
data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents" set from storage minecraft:item custom
#data modify storage minecraft:item temp set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents"