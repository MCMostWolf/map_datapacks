scoreboard players operation #temp max_hp *= #math2 math

execute if entity @s[tag=!low_health.started] if score #temp max_hp matches ..6500 run data modify entity @s Health set value 25
execute if score #temp max_hp matches ..6500 run tag @s add low_health

execute if entity @s[tag=!phase2] if score #temp max_hp < @s max_hp run function creature:boss/nightmare_wither/control/phase2
execute if score #temp max_hp < @s max_hp run return run tag @s add phase2
execute if entity @s[tag=phase2] run playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 0.6 0.6
execute if entity @s[tag=phase2] on passengers run item replace entity @s contents with \
minecraft:ender_pearl[minecraft:enchantment_glint_override=1b]
tag @s remove phase2