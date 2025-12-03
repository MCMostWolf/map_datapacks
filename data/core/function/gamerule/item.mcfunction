execute if entity @s[tag=core.item.loaded] run return fail
tag @s add core.item.loaded
execute if items entity @s contents *[minecraft:custom_data~{"invul":1b}] run tag @s add core.item.invul
execute if items entity @s contents minecraft:barrier if function tool:debug_test run tag @s add debug_kill
execute if items entity @s contents #important run tag @s add core.item.invul
execute if items entity @s contents #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_cursor":true}] at @s run function item:prop/shulker_box/quick_inventory/change
execute unless entity @s[tag=core.item.invul] run return fail
data modify entity @s Invulnerable set value 1b
data modify entity @s Age set value -32768