data remove entity @s AngryAt
tag @s add vc.traget
damage @s 0.01 minecraft:mob_attack by @e[distance=..12,type=!#noplayerne,tag=!vc.traget,tag=vc.pre,limit=1,sort=random]


execute at @s positioned ~ ~0.8 ~ run function effects:particle/spiral/squid_ink/circle_mini_up
execute at @s run playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 0.6 1.4
execute at @s run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 0.7 1.8
execute at @s run particle minecraft:shriek{delay:0} ~ ~1 ~ 0 0 0 0 0 normal