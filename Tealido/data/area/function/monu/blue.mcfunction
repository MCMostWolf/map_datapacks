#
scoreboard players set #blue gamerule 1
function area:monu/_place
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:"small_ball",colors:[3969535]}]}}}}
title @a title [{"text":"Blue Completed","color":"#5a97ff","bold":true,shadow_color:-14405514}]
title @a subtitle [{"text":"Water Paradise | By MC_Wolf_Emperor","color":"#5a97ff","bold":true,shadow_color:-14405514}]
particle minecraft:flash{color:-13308161} ~ ~0.8 ~ 0 0 0 0 0 normal
function effects:particle/circle/cloud/mini_out
function effects:particle/circle/spit/normal_out
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 30 normal
particle minecraft:dripping_water ~ ~ ~ 0.3 0.3 0.3 0.1 30 normal
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ 0.9 1.4
playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 0.4 0.7
playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 0.6 1.2
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 0.9