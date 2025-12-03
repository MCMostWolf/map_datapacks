

execute if items entity @s weapon.* #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true}] if entity @s[tag=condition.sneaking] run return fail

execute if items entity @s hotbar.0 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.0"}
execute if items entity @s hotbar.1 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.1"}
execute if items entity @s hotbar.2 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.2"}
execute if items entity @s hotbar.3 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.3"}
execute if items entity @s hotbar.4 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.4"}
execute if items entity @s hotbar.5 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.5"}
execute if items entity @s hotbar.6 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.6"}
execute if items entity @s hotbar.7 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.7"}
execute if items entity @s hotbar.8 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"hotbar.8"}
execute if items entity @s weapon.offhand #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_hotbar":false}] run function item:prop/shulker_box/hotbar/load {slot:"weapon.offhand"}