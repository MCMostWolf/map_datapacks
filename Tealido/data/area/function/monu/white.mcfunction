#
scoreboard players set #white gamerule 1
function area:monu/_place
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:"small_ball",colors:[15592941]}]}}}}
title @a title [{"text":"White Completed","color":"#ffffff","bold":true,shadow_color:-6513508}]
title @a subtitle [{"text":"White Test | By Az_tyrants","color":"#ffffff","bold":true,shadow_color:-6513508}]
particle minecraft:flash{color:-1} ~ ~0.8 ~ 0 0 0 0 0 normal
function effects:particle/circle/firework/mini
function effects:particle/circle/end_rod/mini_out_1
particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 30 normal
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 0.4 1
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 0.6 1.9
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 0.9