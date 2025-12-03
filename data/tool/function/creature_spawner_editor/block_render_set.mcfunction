#递归追踪
particle minecraft:dust_color_transition{from_color:3583,scale:2,to_color:7298} ~ ~ ~ 0 0 0 0.5 0 force
execute anchored feet facing entity @s feet \
positioned ^ ^ ^0.7 unless entity @s[distance=..0.9] run \
return run function tool:creature_spawner_editor/block_render_set
#物品
item replace entity @s contents from entity @p[tag=tool.creature_spawner_editor.selected] weapon.offhand
