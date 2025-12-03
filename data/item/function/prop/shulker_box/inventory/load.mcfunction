$item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents from entity @s $(slot)
function item:prop/shulker_box/load

item modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents \
    [\
        {\
            "function":"minecraft:set_custom_data",\
            "tag":\
            {\
                "in_cursor": false,\
                "in_inventory": true,\
                "in_hotbar": false,\
            }\
        }\
    ]
#data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents" set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data".shulker_bundle

function item:prop/shulker_box/inventory/append
execute store result score #temp temp run execute if data entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:bundle_contents".[]
execute if score #temp temp matches 28.. run function item:prop/shulker_box/inventory/full
$item replace entity @s $(slot) from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents
playsound minecraft:entity.shulker.close player @a ~ ~ ~ 0.5 1.6