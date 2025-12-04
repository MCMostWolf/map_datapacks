execute as @e[distance=..9,type=#minecraft:arrows] at @s \
run function area:nightmare_tower/eye/arrow


scoreboard players add @s skill 1

execute if score @s skill matches 140 run \
playsound minecraft:entity.shulker.close ambient @a ~ ~ ~ 2 1.4
execute if score @s skill matches 140 run return run data merge entity @s {\
transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
scale: [10.5f, 0.03f, 0.0f], translation: [0.0f, 0.0f, 0.0f]},\
start_interpolation:0,interpolation_duration:3}
execute if score @s skill matches 141 store result score @s skill run random value 167..175

execute if score @s skill matches 178 run \
playsound minecraft:entity.shulker.close ambient @a ~ ~ ~ 2 2
execute if score @s skill matches 178 run return run data merge entity @s {\
transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
scale: [8.0f, 8.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]},\
start_interpolation:0,interpolation_duration:2}



execute unless score @s skill matches 180.. run return fail
execute store result score @s skill run random value 40..139