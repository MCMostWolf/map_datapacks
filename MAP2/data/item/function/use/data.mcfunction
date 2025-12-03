
#数据
execute unless entity @s[tag=offhand] run item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 \
contents from entity @s weapon.mainhand
execute if entity @s[tag=offhand] run item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 \
contents from entity @s weapon.offhand
execute if entity @s[tag=return_used] run function item:use/search
execute if entity @s[tag=usinger] unless items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 \
contents *[minecraft:custom_data~{Using:1b}] \
run return run function item:use/click/fail
execute run data modify storage minecraft:item nbt set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 \
item.components."minecraft:custom_data"