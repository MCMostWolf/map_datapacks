playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.5 0.7
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.5 0.5 0.5 0.2 120 force
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 force
#execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0.2 2 force
execute positioned ~ ~0.3 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute positioned ~ ~0.7 ~ run function effects:particle/circle/squid_ink/normal_out_2
execute positioned -265.5 173.5 156.5 run kill @e[distance=0..1,type=minecraft:item_display,tag=nightmare_tower_eye]
scoreboard players reset #withering gamerule
loot spawn ~ ~ ~ loot area:nightmare_tower/hope_fruit
stopsound @a[distance=..20] record
schedule function creature:boss/nightmare_wither/event/death_music 7.5s replace

summon minecraft:experience_orb ~1 ~ ~1 {Value:50,Count:4}
summon minecraft:experience_orb ~2 ~1 ~ {Value:50,Count:4}
summon minecraft:experience_orb ~3 ~ ~1 {Value:50,Count:4}
summon minecraft:experience_orb ~-1 ~ ~1 {Value:50,Count:4}
summon minecraft:experience_orb ~ ~ ~2 {Value:50,Count:4}
summon minecraft:experience_orb ~ ~-1 ~3 {Value:50,Count:7}
summon minecraft:experience_orb ~1 ~1 ~-1 {Value:50,Count:7}
summon minecraft:experience_orb ~2 ~ ~-2 {Value:50,Count:7}
summon minecraft:experience_orb ~1 ~ ~-3 {Value:700,Count:1}
summon minecraft:experience_orb ~-1 ~ ~1 {Value:700,Count:1}
summon minecraft:experience_orb ~-2 ~ ~2 {Value:500,Count:1}
summon minecraft:experience_orb ~-3 ~ ~1 {Value:200,Count:2}
summon minecraft:experience_orb ~ ~ ~0.6 {Value:200,Count:2}
summon minecraft:experience_orb ~1 ~ ~ {Value:200,Count:2}