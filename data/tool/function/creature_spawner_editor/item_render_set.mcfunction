#递归追踪
particle minecraft:dust_color_transition{from_color:16711914,scale:2,to_color:9699502} ~ ~ ~ 0 0 0 0.5 0 force
execute anchored feet facing entity @s feet \
positioned ^ ^ ^0.7 unless entity @s[distance=..0.9] run \
return run function tool:creature_spawner_editor/item_render_set
#物品
item replace entity @s contents from entity @p[tag=tool.creature_spawner_editor.selected] weapon.offhand
