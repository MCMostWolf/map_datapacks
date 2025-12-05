playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 2 1.3
execute positioned ~ ~-2 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute positioned ~ ~-3 ~ run function effects:particle/circle/squid_ink/normal_out_2
effect give @a[distance=..16] minecraft:regeneration 1 2 false