$give @s minecraft:pig_spawn_egg[\
minecraft:item_model="minecraft:spawner",minecraft:custom_model_data={strings:["block.creature_spawner.$(creature_spawner_type)"]},\
minecraft:entity_data={"id":"minecraft:marker","Tags":["creature_spawner_place"],\
"data":{\
spawn_range:$(spawn_range),active_range:$(active_range),max_spawner_cd:$(max_spawner_cd),\
min_spawner_cd:$(min_spawner_cd),spawn_count:$(spawn_count),spawn_creature_count:$(spawn_creature_count),\
spawn_creature_id:'$(spawn_creature_id)',creature_spawner_type:'$(creature_spawner_type)'\
}},minecraft:item_name=["[",{"translate":"creature.hostial.$(spawn_creature_id).name"},"]"," ",{"translate":"block.minecraft.spawner"}],\
minecraft:lore=[\
{"text":"------*-------------数据信息-------------*------","color":"gray","italic":false},\
{"text":"刷怪笼类型","extra":[" : ",{"text":"$(creature_spawner_type)"}],"color":"gold","italic":false},\
{"text":"刷怪名称","extra":[" : ",{"text":"$(spawn_creature_id)"}],"color":"red","italic":false},\
{"text":"刷怪数量","extra":[" : ",{"text":"$(spawn_creature_count)"}],"color":"yellow","italic":false},\
{"text":"最大刷怪笼CD","extra":[" : ",{"text":"$(max_spawner_cd)"}],"color":"aqua","italic":false},\
{"text":"最小刷怪笼CD","extra":[" : ",{"text":"$(min_spawner_cd)"}],"color":"aqua","italic":false},\
{"text":"刷怪范围(单位不一致)","extra":[" : ",{"text":"$(spawn_range)"}],"color":"blue","italic":false},\
{"text":"激活范围","extra":[" : ",{"text":"$(active_range)"}],"color":"green","italic":false},\
{"text":"最大刷怪上限","extra":[" : ",{"text":"$(spawn_count)"}],"color":"dark_green","italic":false},\
]]
playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 0.3 1.5
playsound minecraft:block.trial_spawner.close_shutter player @a ~ ~ ~ 1 0.8