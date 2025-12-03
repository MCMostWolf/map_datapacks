
#吸血
execute store result score #temp temp if entity @e[distance=..9,type=!#noplayerne]
execute store result storage minecraft:temp temp int 1 run scoreboard players operation #temp temp += #math5 math
execute as @e[distance=..9,type=!#noplayerne] at @s positioned ~ ~1 ~ run function item:artifact/flower_of_gluttony/traget
function item:artifact/flower_of_gluttony/healing with storage minecraft:temp
#
particle minecraft:dust_color_transition{from_color:16759552,scale:3,to_color:15087104} ~ ~0.3 ~ 0.6 0.2 0.6 0 10 normal
particle minecraft:dust_color_transition{from_color:16759552,scale:1.8,to_color:15087104} ~ ~0.3 ~ 0.6 0.2 0.6 0 20 normal
execute positioned ~ ~0.5 ~ run function effects:particle/circle/wax_on/mini_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/small_flame/mini_out
playsound minecraft:entity.creaking.activate player @a ~ ~ ~ 1 1.4
playsound minecraft:entity.creaking.spawn player @a ~ ~ ~ 0.7 1.1