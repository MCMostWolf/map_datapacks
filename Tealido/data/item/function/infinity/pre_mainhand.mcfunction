function tool:quick_cmd/player/_data_get
execute if items entity @s weapon.mainhand * run data modify storage minecraft:item drop set from storage minecraft:temp_player player.mainhand
execute if items entity @s weapon.mainhand * run return run function item:drop with storage minecraft:item drop
execute if entity @s[tag=infinity.mainhand_use] run data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item set from storage minecraft:temp_player player.mainhand
item replace entity @s weapon.mainhand \
from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents
tag @s remove infinity.mainhand_use