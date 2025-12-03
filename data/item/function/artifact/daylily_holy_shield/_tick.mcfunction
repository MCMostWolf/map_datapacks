#计时
scoreboard players add @s artifact_cd 1
execute if score @s artifact_cd matches 1..5 on passengers if entity @s[type=minecraft:item_display] run function item:artifact/daylily_holy_shield/apper
execute if score @s artifact_cd matches 373 run function item:artifact/daylily_holy_shield/deactive
execute if score @s artifact_cd matches 373..375 on passengers if entity @s[type=minecraft:item_display] run data merge entity @s {start_interpolation:0,interpolation_duration:5,teleport_duration:1,\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0,0,0],translation:[0,0,0.5]}}
#玩家
execute if score @s artifact_cd matches 8..345 if predicate condition:tick/10t run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.3 1.6
execute if score @s artifact_cd matches 8..374 on passengers if entity @s[type=minecraft:item_display] at @s run function item:artifact/daylily_holy_shield/display
execute on passengers if entity @s[type=minecraft:area_effect_cloud] on origin run tag @s add atf_user
execute on vehicle run function item:artifact/daylily_holy_shield/user
execute on passengers if entity @s[type=minecraft:area_effect_cloud] on origin run tag @s remove atf_user
#清除
execute unless score @s artifact_cd matches 400.. run return fail
execute on vehicle run kill @s
execute on passengers run kill @s
kill @s