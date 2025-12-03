execute as @e[tag=creature_spawner,distance=..16] on passengers unless data entity @s {Glowing:1b} run tag @s add tool.creature_spawner_editor.glowing
execute as @e[tag=creature_spawner,distance=..16] on passengers run data modify entity @s Glowing set value 1b
schedule function tool:creature_spawner_editor/control/invisible 2t replace