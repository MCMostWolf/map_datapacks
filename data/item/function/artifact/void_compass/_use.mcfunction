tag @e[distance=..12,type=!#noplayerne] add vc.pre
execute as @e[distance=..12,type=!#noplayerne] run function item:artifact/void_compass/chaos
execute as @e[distance=..12,type=!#noplayerne,tag=vc.pre] run tag @s remove vc.traget
execute as @e[distance=..12,type=!#noplayerne,tag=vc.pre] run tag @s remove vc.pre
#
execute positioned ~ ~0.2 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/mini_out_2
execute positioned ~ ~0.8 ~ run function effects:particle/circle/sculk_soul/mini_out
particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0 0.2 0.2 30 normal
particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0 0.2 0.2 15 normal
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 0 normal
particle minecraft:shriek{delay:0} ~ ~1 ~ 0 0 0 0 0 normal
particle minecraft:shriek{delay:10} ~ ~1 ~ 0 0 0 0 0 normal
particle minecraft:shriek{delay:20} ~ ~1 ~ 0 0 0 0 0 normal
playsound minecraft:event.mob_effect.bad_omen player @a ~ ~ ~ 1 1.7
playsound minecraft:event.mob_effect.raid_omen player @a ~ ~ ~ 0.2 2
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1.4