scoreboard players remove #temp1 temp 1
particle minecraft:end_rod ^ ^0.3 ^2.3 0 0 0 0 0 normal
particle minecraft:squid_ink ^ ^0.3 ^2 0 0 0 0 0 normal
execute if score #temp1 temp matches 1.. rotated ~15 ~ run return run function area:nightmare_tower/eye/attack/effects
scoreboard players reset #temp1 temp
playsound minecraft:item.ink_sac.use player @a ~ ~ ~ 0.8 1.8
