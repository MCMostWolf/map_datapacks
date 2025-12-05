function tool:quick_cmd/player/_data_get
execute if items entity @s weapon.offhand * run data modify storage minecraft:item drop set from storage minecraft:temp_player player.offhand
execute if items entity @s weapon.offhand * run return run function item:drop with storage minecraft:item drop
execute if entity @s[tag=infinity.offhand_use] run data modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item set from storage minecraft:temp_player player.offhand
item replace entity @s weapon.offhand \
from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents
tag @s remove infinity.offhand_use