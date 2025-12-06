#
tag @s add skill_user
#
execute positioned ^ ^ ^0.6 positioned ~-1.5 ~ ~-1.5 run tag @a[dx=2,dy=1.5,dz=2] add skill_traget
execute as @a[distance=..20,tag=skill_traget] run damage @s 6 minecraft:mob_attack by @n[distance=..0.01,type=minecraft:bogged,tag=skill_user]
execute positioned ^ ^ ^0.6 positioned ~-1.5 ~ ~-1.5 run tag @a[dx=2,dy=1.5,dz=2] remove skill_traget

particle minecraft:sweep_attack ^ ^1.2 ^0.6 0 0 0 1 0 force
particle minecraft:firework ^ ^1.2 ^0.6 0.8 0.3 0.8 0.1 8 force
particle minecraft:happy_villager ^ ^1.2 ^0.6 0.8 0.3 0.8 0.1 1 normal
particle minecraft:explosion ^ ^1.2 ^0.6 1.4 0 0 1 0 normal

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.4 1.6

tag @s remove skill_user
