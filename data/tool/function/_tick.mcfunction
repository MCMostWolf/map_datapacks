execute as @e[type=area_effect_cloud,tag=tool.bond_passengers] run function effects:screen/tool/bond_passengers
execute as @e[type=area_effect_cloud,tag=bond_passengers] run function effects:screen/tool/bond_passengers
execute as @a[tag=condition.sneaking] if items entity @s weapon.mainhand minecraft:barrier at @s positioned ~ ~-0.5 ~ run function tool:debug1
execute as @e[type=minecraft:item,tag=debug_kill] at @s run function tool:debug

tag @a remove debug
execute as @a if items entity @s weapon.mainhand minecraft:barrier run tag @s add debug