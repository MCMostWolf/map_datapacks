advancement revoke @s only item:infinity_use
function tool:quick_cmd/player/_data_get
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"infinity":true}] run return run tag @s add infinity.mainhand_use
execute if items entity @s weapon.offhand *[minecraft:custom_data~{"infinity":true}] run tag @s add infinity.offhand_use
execute if entity @s[tag=infinity.mainhand_use] run data modify storage minecraft:temp_player player.mainhand set from entity @s SelectedItem
execute if entity @s[tag=infinity.offhand_use] run data modify storage minecraft:temp_player playeroffhand set from entity @s equipment.offhand
function tool:quick_cmd/player/_data_store
