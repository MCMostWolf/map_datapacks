execute unless predicate condition:tick/15t run return fail
execute if entity @s[tag=phase2] run effect give @a[distance=..15,tag=condition.playing] minecraft:blindness 2 1 false
playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 2 1.7
execute as @a[distance=..15,tag=condition.playing] at @s run function area:nightmare_tower/eye/attack/_spawn
execute positioned ~ ~-3 ~ run function effects:particle/circle/squid_ink/normal_out_1