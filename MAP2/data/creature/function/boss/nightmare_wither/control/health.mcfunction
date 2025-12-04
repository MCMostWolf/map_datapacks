scoreboard players operation #temp max_hp *= #math2 math

execute if entity @s[tag=!phase2] if score #temp max_hp < @s max_hp run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1.2
execute if entity @s[tag=!phase2] if score #temp max_hp < @s max_hp on passengers run item replace entity @s contents with \
minecraft:ender_eye[minecraft:enchantment_glint_override=1b]

execute if score #temp max_hp < @s max_hp run return run tag @s add phase2
execute if entity @s[tag=phase2] run playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 0.6 0.6
execute if entity @s[tag=phase2] on passengers run item replace entity @s contents with \
minecraft:ender_pearl[minecraft:enchantment_glint_override=1b]
tag @s remove phase2