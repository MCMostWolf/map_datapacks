execute unless predicate condition:tick/3t run scoreboard players add @s skill 1
execute unless predicate condition:tick/3t run scoreboard players operation #temp1 temp = @s skill
execute unless predicate condition:tick/3t run function area:nightmare_tower/eye/attack/effects
execute unless score @s skill matches 25.. run return fail
playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 0.7 1.2
playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 0.6 1.85
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 1.6
particle minecraft:explosion ~ ~0.5 ~ 1 0 0 1 0 normal
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 0 force
particle minecraft:flash{color:-4888833} ~ ~0.5 ~ 0.5 0.5 0.5 0 3 force
particle minecraft:firework ~ ~0.4 ~ 0 0 0 0.2 10 normal
particle minecraft:squid_ink ~ ~0.4 ~ 0 0 0 0.3 30 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.3 0.5 0.3 0 10 normal
#
execute positioned ~-2.5 ~-2 ~-2.5 as @e[dz=4,dy=3,dx=4,type=item_display,tag=creature_spawner.unbreak] at @s \
run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-2.5 ~-2 ~-2.5 as @e[dz=4,dy=3,dx=4,type=item_display,tag=creature_spawner.unbreak] at @s \
run tag @s remove creature_spawner.unbreak
execute positioned ~-2.5 ~-2 ~-2.5 as @e[dz=4,dy=3,dx=4,type=!#none,type=!minecraft:wither] \
run damage @s 8 minecraft:magic
kill @s