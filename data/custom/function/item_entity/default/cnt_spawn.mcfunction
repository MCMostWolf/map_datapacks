execute if score #cnt temp matches ..1 run return fail
execute positioned ~0.07 ~ ~ rotated ~ ~-7 summon minecraft:item_display run function custom:item_entity/default/cnt_load with storage minecraft:tool item_entity
scoreboard players remove #cnt temp 1
execute positioned ~0.07 ~ ~ rotated ~ ~-7 run function custom:item_entity/default/cnt_spawn