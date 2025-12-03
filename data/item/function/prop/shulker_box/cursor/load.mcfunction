item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents from entity @s player.cursor

execute if items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents #minecraft:shulker_boxes_[minecraft:custom_data~{"in_cursor":false}] run \
playsound minecraft:block.shulker_box.open player @a ~ ~ ~ 0.2 1.3
execute if items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents #minecraft:shulker_boxes_[minecraft:bundle_contents~{items:{size:{min:1}}}] run \
playsound minecraft:entity.shulker_bullet.hit player @a ~ ~ ~ 0.5 1.6

function item:prop/shulker_box/load
item modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents \
    [\
        {\
            "function":"minecraft:set_custom_data",\
            "tag":\
            {\
                "in_cursor": true,\
                "in_inventory": false,\
                "in_hotbar": false,\
            }\
        }\
    ]
#处理
function item:prop/shulker_box/cursor/append
execute store result score #temp temp run execute if data entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle".[]
execute if score #temp temp matches 28.. run function item:prop/shulker_box/cursor/full
item replace entity @s player.cursor from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents