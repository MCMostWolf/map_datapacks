particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.9 0.3 0.1 30 normal
particle minecraft:dragon_breath ~ ~0.7 ~ 0.3 0.9 0.3 0.1 20 normal
particle minecraft:dripping_obsidian_tear ~ ~0.7 ~ 0.3 0.9 0.3 0.1 40 normal
particle minecraft:flash{color:-9961232} ~ ~0.4 ~ 0 0 0 0 0 normal
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 0.8 0.3
playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 0.9 0.7
playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 0.5 2
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.2 1.3
#效果
execute positioned ~ ~0.5 ~ run function effects:particle/circle/end_rod/mini
execute positioned ~ ~0.5 ~ run function effects:particle/circle/firework/mini_1
#重置
function item:artifact/pearl_of_monument/reset
#生成
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
function tool:quick_cmd/entity/_bond {"bond":"@s","ride":"@n[distance=..0.01,type=minecraft:armor_stand,tag=loading]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run function item:artifact/pearl_of_monument/load