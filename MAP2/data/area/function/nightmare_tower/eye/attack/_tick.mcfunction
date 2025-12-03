execute if predicate condition:tick/2t run scoreboard players add @s skill 1
execute if predicate condition:tick/2t run scoreboard players operation #temp1 temp = @s skill
execute if predicate condition:tick/2t run function area:nightmare_tower/eye/attack/effects
execute unless score @s skill matches 25.. run return fail
playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 0.7 1.2
playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 0.6 1.85
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 1.6
particle minecraft:explosion ~ ~0.5 ~ 1 0 0 1 0 normal
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 0 force
particle minecraft:flash{color:-4888833} ~ ~0.5 ~ 0.5 0.5 0.5 0 3 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 0 0.05 30 normal
particle minecraft:firework ~ ~0.4 ~ 0 0 0 0.2 30 normal
particle minecraft:squid_ink ~ ~0.4 ~ 0 0 0 0.3 30 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.3 0.5 0.3 0 10 normal
#
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:spawner
execute positioned ~-2 ~-2 ~-2 as @e[dz=3,dy=3,dx=3,type=!#none] \
run damage @s 10 minecraft:magic
kill @s