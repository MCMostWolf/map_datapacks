data modify storage tool creature_spawner.temp set value \
"spawn_range:$(spawn_range),active_range:$(active_range),max_spawner_cd:$(max_spawner_cd),\
min_spawner_cd:$(min_spawner_cd),spawn_count:$(spawn_count),spawn_creature_count:$(spawn_creature_count),\
spawn_creature_id:'$(spawn_creature_id)',creature_spawner_type:'$(creature_spawner_type)'"
execute store result storage tool creature_spawner.uid int 1 run scoreboard players get @s uid
function tool:creature_spawner_editor/dialog/dialog with storage tool creature_spawner

playsound minecraft:entity.villager.work_librarian player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.villager.work_librarian player @a ~ ~ ~ 1 0