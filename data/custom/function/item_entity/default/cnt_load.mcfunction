scoreboard players operation @s uid = #uid_2 uid
$data modify entity @s transformation.scale set value [$(scale),$(scale),$(scale)]
$data modify entity @s transformation.left_rotation set value $(left_rotation)
item replace entity @s contents from entity @p[tag=user] weapon.mainhand
rotate @s ~ ~