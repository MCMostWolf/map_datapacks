playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.5 0.7
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.5 0.5 0.5 0.2 120 force
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 force
#execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0.2 2 force
execute positioned ~ ~0.3 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute positioned ~ ~0.7 ~ run function effects:particle/circle/squid_ink/normal_out_2
execute positioned -265.5 173.5 156.5 run kill @e[distance=0..1,type=minecraft:item_display,tag=nightmare_tower_eye]
