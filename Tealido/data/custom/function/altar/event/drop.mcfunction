execute unless items entity @p[distance=0..,tag=skill_user] weapon.mainhand * run return run \
item replace entity @p[distance=0..,tag=skill_user] weapon.mainhand from entity @s contents
execute unless items entity @s contents * run return fail
data modify storage minecraft:item drop set from entity @s item
execute at @p[distance=0..,tag=skill_user] run function item:drop with storage minecraft:item drop