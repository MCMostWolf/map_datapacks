execute unless entity @n[type=!#minecraft:none,team=!other,tag=RemoteTarget,distance=0..] run return fail
execute on origin at @s run playsound item.trident.hit_ground master @s ~ ~ ~ 0.7 2
execute on origin at @s run function effects:_test