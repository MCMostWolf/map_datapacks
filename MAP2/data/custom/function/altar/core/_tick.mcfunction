function custom:altar/_tick
tag @s add skill_user
execute as @n[distance=..16,type=minecraft:item_display,tag=altar.base,tag=!bonded] run function custom:altar/base/bond
tag @s remove skill_user