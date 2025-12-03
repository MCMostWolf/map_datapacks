advancement revoke @s only item:player/shulker_box
execute if entity @s[tag=ad.loading] run return fail
#单次触发
tag @s add ad.loading
execute if items entity @s inventory.0 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.0"}
execute if items entity @s inventory.1 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.1"}
execute if items entity @s inventory.2 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.2"}
execute if items entity @s inventory.3 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.3"}
execute if items entity @s inventory.4 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.4"}
execute if items entity @s inventory.5 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.5"}
execute if items entity @s inventory.6 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.6"}
execute if items entity @s inventory.7 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.7"}
execute if items entity @s inventory.8 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.8"}
execute if items entity @s inventory.9 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.9"}
execute if items entity @s inventory.10 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.10"}
execute if items entity @s inventory.11 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.11"}
execute if items entity @s inventory.12 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.12"}
execute if items entity @s inventory.13 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.13"}
execute if items entity @s inventory.14 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.14"}
execute if items entity @s inventory.15 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.15"}
execute if items entity @s inventory.16 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.16"}
execute if items entity @s inventory.17 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.17"}
execute if items entity @s inventory.18 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.18"}
execute if items entity @s inventory.19 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.19"}
execute if items entity @s inventory.20 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.20"}
execute if items entity @s inventory.21 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.21"}
execute if items entity @s inventory.22 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.22"}
execute if items entity @s inventory.23 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.23"}
execute if items entity @s inventory.24 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.24"}
execute if items entity @s inventory.25 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.25"}
execute if items entity @s inventory.26 #minecraft:shulker_boxes_[minecraft:custom_data~{"shulker_box":true},minecraft:custom_data~{"in_inventory":false}] run function item:prop/shulker_box/inventory/load {slot:"inventory.26"}

function item:prop/shulker_box/hotbar