function tool:creature_spawner_editor/control/glowing
title @s actionbar [{"text":""}]
#
#Ctrl+Shift
execute if entity @s[predicate=condition:player_stats/sprint,predicate=condition:player_stats/sneak] run return run \
title @s actionbar [{"keybind":"key.sprint","extra":[{"text":" + "},{"keybind":"key.sneak"},{"text":" + "},{"keybind":"key.use"},{"text":" : "},{"text":"在脚下放置刷怪笼","color":"green"}],"color":"gray","italic": false}]
#Ctrl
execute if entity @s[predicate=condition:player_stats/sprint] if entity @n[type=minecraft:item_display,tag=creature_spawner] run return run \
title @s actionbar [{"keybind":"key.sprint","extra":[{"text":" + "},{"keybind":"key.use"},{"text":" : "},{"text":"瞄准最近刷怪笼","color":"green"}],"color":"gray","italic": false}]
##副手
#Shift
execute if items entity @s weapon.offhand *[custom_data~{tool.creature_spawner_editor:1b}] \
if entity @s[predicate=condition:player_stats/sneak,predicate=condition:entity_stats/onground] \
if entity @n[type=minecraft:item_display,tag=creature_spawner] \
run return run \
title @s actionbar [{"keybind":"key.sneak","extra":[{"text":" + "},{"keybind":"key.use"},{"text":" : "},{"text":"将数据传入最近刷怪笼","color":"aqua"}],"color":"gray","italic": false}]
#正常
execute if items entity @s weapon.offhand *[custom_data~{tool.creature_spawner_editor:1b}] \
if entity @n[type=minecraft:item_display,tag=creature_spawner] \
run return run \
title @s actionbar [{"keybind":"key.use","extra":[{"text":" : "},{"text":"将最近刷怪笼数据导入编辑器","color":"aqua"}],"color":"gray","italic": false}]

#副手物品
#Shift
execute if entity @s[predicate=condition:player_stats/sneak] \
if items entity @s weapon.offhand * \
if entity @n[type=minecraft:item_display,tag=creature_spawner] run return run \
title @s actionbar [{"keybind":"key.sneak","extra":[{"text":" + "},{"keybind":"key.use"},{"text":" : "},{"text":"用副手物品替换最近刷怪笼核心渲染","color":"light_purple"}],"color":"gray","italic": false}]
#正常
execute if items entity @s weapon.offhand * \
if entity @n[type=minecraft:item_display,tag=creature_spawner] run return run \
title @s actionbar [{"keybind":"key.use","extra":[{"text":" : "},{"text":"用副手物品替换最近刷怪笼外壳渲染","color":"light_purple"}],"color":"gray","italic": false}]

##主手
#Shift
execute if entity @s[predicate=condition:player_stats/sneak] run return run \
title @s actionbar [{"keybind":"key.sneak","extra":[{"text":" + "},{"keybind":"key.use"},{"text":" : "},{"text":"获取刷怪笼快捷方式","color":"gold"}],"color":"gray","italic": false}]
#正常
title @s actionbar [{"keybind":"key.use","extra":[{"text":" : "},{"text":"打开数据编辑器界面","color":"gold"}],"color":"gray","italic": false}]