#
scoreboard players set #lime gamerule 1
function area:monu/_place
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:"small_ball",colors:[8912700]}]}}}}
title @a title [{"text":"Lime Completed","color":"#a3ff84","bold":true,shadow_color:-13532387}]
title @a subtitle [{"text":"The Square Fortress | By tianhuamuban","color":"#a3ff84","bold":true,shadow_color:-13532387}]
particle minecraft:flash{color:-7864516} ~ ~0.8 ~ 0 0 0 0 0 normal
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.4 70 normal
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.1 30 normal
playsound minecraft:item.totem.use ambient @a ~ ~ ~ 0.07 0
playsound minecraft:item.totem.use ambient @a ~ ~ ~ 0.12 1
playsound minecraft:item.totem.use ambient @a ~ ~ ~ 0.3 1.6
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_cluster.break ambient @a ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 0.9