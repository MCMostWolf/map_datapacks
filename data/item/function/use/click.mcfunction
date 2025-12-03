#标准点击
scoreboard players reset @s click
execute unless function item:_click run return run execute if items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents *[minecraft:custom_data~{Using:1b}] \
run scoreboard players set @s use -1
#储存Using
execute unless items entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents *[minecraft:custom_data~{Using:1b}] \
run return fail
execute store result storage minecraft:player uid int 1 run scoreboard players get @s uid
function item:use/store with storage minecraft:player
tag @s add usinger