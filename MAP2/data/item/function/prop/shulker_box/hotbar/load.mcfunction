$item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents from entity @s $(slot)
function item:prop/shulker_box/load
item modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents \
    [\
        {\
            "function":"minecraft:set_custom_data",\
            "tag":\
            {\
                "in_cursor": false,\
                "in_inventory": false,\
                "in_hotbar": true,\
            }\
        }\
    ]
function item:prop/shulker_box/hotbar/append
$item replace entity @s $(slot) from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents
playsound minecraft:entity.shulker.close player @a ~ ~ ~ 0.5 1.6