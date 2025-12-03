execute on passengers if entity @s[type=minecraft:item_display] run item replace entity @s contents with \
minecraft:ender_pearl[minecraft:enchantment_glint_override=1b]

execute on passengers if entity @s[type=minecraft:item_display] run data merge entity @s {\
brightness:{block:15,sky:15},\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,1.501,0],scale:[1,1,1]},\
start_interpolation:0,interpolation_duration:10}

data merge entity @s {block_state:{Name:"minecraft:respawn_anchor",Properties:{charges:"4"}},\
brightness:{block:15,sky:15},\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[-0.50005,0.01,-0.50005],scale:[1.001,1.000,1.001]}}