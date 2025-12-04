
execute if block ~ ~ ~ #none if block ~ ~1 ~ #none if block ~ ~2 ~ #none if block ~ ~3 ~ #none \
if block ~ ~4 ~ #none if block ~ ~5 ~ #none run tp @s ~ ~0.7 ~
execute unless score @s skill_time matches 15 run return fail
function effects:particle/circle/cloud/mini_out
data modify entity @s Glowing set value 1b
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.2 1.6
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 0.7

execute if entity @s[tag=!phase2] run return fail
function tool:quick_cmd/game/spread {num:4,min:3,max:6,float:5}
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn