function creature:creature_spawner/_template/load
execute on passengers run item modify entity @s contents [{function:"minecraft:set_custom_model_data",strings:{mode:"replace_all",values:["block.creature_spawner.default_active"]}}]
tag @s add default