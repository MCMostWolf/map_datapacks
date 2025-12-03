#Ctrl+Shift
execute if entity @s[predicate=condition:player_stats/sprint,predicate=condition:player_stats/sneak] run return run \
function creature:creature_spawner/_place
#Ctrl
execute if entity @s[predicate=condition:player_stats/sprint] if entity @n[type=minecraft:item_display,tag=creature_spawner] \
as @n[type=minecraft:item_display,tag=creature_spawner] run return run \
function tool:creature_spawner_editor/control/search
##副手
#Shift

execute if items entity @s weapon.offhand *[custom_data~{tool.creature_spawner_editor:1b}] \
if entity @s[predicate=condition:player_stats/sneak,predicate=condition:entity_stats/onground] \
as @n[type=minecraft:item_display,tag=creature_spawner] run return run \
function tool:creature_spawner_editor/load

#正常
execute if items entity @s weapon.offhand *[custom_data~{tool.creature_spawner_editor:1b}] \
as @n[type=minecraft:item_display,tag=creature_spawner] run return run \
function tool:creature_spawner_editor/dialog/load

#副手物品
#Shift
execute if entity @s[predicate=condition:player_stats/sneak] \
if items entity @s weapon.offhand * \
if entity @n[type=minecraft:item_display,tag=creature_spawner] run return run \
function tool:creature_spawner_editor/item_render
#正常
execute \
if items entity @s weapon.offhand * \
if entity @n[type=minecraft:item_display,tag=creature_spawner] run return run \
function tool:creature_spawner_editor/block_render

##主手
#Shift
execute if entity @s[predicate=condition:player_stats/sneak] run return run \
function tool:creature_spawner_editor/control/spawner_get with storage minecraft:tool creature_spawner

#正常
function tool:creature_spawner_editor/dialog/_show