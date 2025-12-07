#
scoreboard players set #purple gamerule 1
function area:monu/_place
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:"small_ball",colors:[11352831]}]}}}}
title @a title [{"text":"Purple Completed","color":"#b342dc","bold":true,shadow_color:-10747755}]
title @a subtitle [{"text":"Nightmare Tower | By Tealido","color":"#b342dc","bold":true,shadow_color:-10747755}]
particle minecraft:flash{color:-6472449} ~ ~0.8 ~ 0 0 0 0 0 normal
function effects:particle/circle/squid_ink/mini_out_1
function effects:particle/circle/sculk_soul/mini_out
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.1 30 normal
particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 0.1 30 normal
playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 0.15 1.7
playsound minecraft:block.ender_chest.open ambient @a ~ ~ ~ 0.7 1.4
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 0.15 1.9
playsound minecraft:entity.illusioner.cast_spell ambient @a ~ ~ ~ 0.4 0.7
playsound minecraft:entity.illusioner.cast_spell ambient @a ~ ~ ~ 0.6 1.2
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 0.9