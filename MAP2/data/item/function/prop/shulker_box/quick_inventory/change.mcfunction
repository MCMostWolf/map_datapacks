##缓存盒内容
#转盒
item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents from entity @s contents
data modify storage minecraft:item temp set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle"
data modify storage minecraft:temp cnt set value 0
data remove storage minecraft:item custom
function item:prop/shulker_box/quick_inventory/slot_append

##储存物品栏
#处理
execute on origin run function item:prop/shulker_box/quick_inventory/store
#返还
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
execute on origin run item replace entity @s player.cursor from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents

#导入物品栏
data modify entity 154cd72d-154c-d72d-154c-d72deab328d3 Items set from storage minecraft:item custom
execute on origin run function item:prop/shulker_box/quick_inventory/get
#
playsound minecraft:block.shulker_box.open player @a ~ ~ ~ 0.2 2
playsound minecraft:entity.shulker_bullet.hit player @a ~ ~ ~ 0.2 1.7
kill @s