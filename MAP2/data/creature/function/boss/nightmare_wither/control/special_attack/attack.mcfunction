scoreboard players remove #temp1 temp 1
execute if score #temp1 temp matches 10.. if block ~ ~ ~ #none \
positioned ~ ~-0.2 ~ if block ~ ~ ~ #none \
run return run function creature:boss/nightmare_wither/control/special_attack/attack
scoreboard players reset #temp1 temp
tp ~ ~ ~
particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0 0 normal
execute if block ~ ~-0.2 ~ #none run return fail
scoreboard players set @s skill_time 41
execute as @a[distance=..5,tag=condition.playing] \
run damage @s 10 minecraft:explosion by @n[distance=..0.01,type=minecraft:wither]
playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ 0.7 0.9
function effects:particle/circle/spit/normal_out
function effects:particle/circle/cloud/normal_out
particle minecraft:explosion_emitter ~ ~0.7 ~ 0.5 0 0.5 0 2 normal
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.7 1.3
data modify entity @s Glowing set value 0b
tag @s add no_ai