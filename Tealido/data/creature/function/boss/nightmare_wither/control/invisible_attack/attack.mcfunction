execute unless predicate condition:tick/15t run return fail
execute run effect give @a[distance=..15,tag=condition.playing] minecraft:darkness 2 1 false
playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 2 1.7
execute unless predicate condition:tick/45t as @a[distance=..15,tag=condition.playing,limit=2,sort=furthest] at @s run function area:nightmare_tower/eye/attack/_spawn
execute positioned ~ ~-3 ~ run function effects:particle/circle/squid_ink/normal_out_1

execute unless predicate condition:tick/45t run return fail
playsound minecraft:event.mob_effect.trial_omen hostile @a ~ ~ ~ 1 1.1

function tool:quick_cmd/game/spread {num:6,min:2,max:5,float:5}
execute if entity @s[tag=!phase2] as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker,limit=3] at @s run function area:nightmare_tower/eye/attack/_spawn

execute if entity @s[tag=!phase2] run return fail
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker,limit=5] at @s run function area:nightmare_tower/eye/attack/_spawn