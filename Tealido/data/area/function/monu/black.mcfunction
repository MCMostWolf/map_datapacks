#
scoreboard players set #black gamerule 1
function area:monu/_place
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:"small_ball",colors:[1644825]}]}}}}
title @a title [{"text":"Black Completed","color":"#2f2f2f","bold":true,shadow_color:-16777216}]
title @a subtitle [{"text":"Shattered Point Nemo | By adarknesslight1","color":"#2f2f2f","bold":true,shadow_color:-16777216}]
particle minecraft:flash{color:-16777216} ~ ~0.8 ~ 0 0 0 0 0 normal
function effects:particle/circle/squid_ink/mini_out_1
function effects:particle/circle/flame/mini_out
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.1 30 normal
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.1 30 normal
playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.ambient ambient @a ~ ~ ~ 1 1.4
playsound minecraft:entity.blaze.ambient ambient @a ~ ~ ~ 1 2
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 0.9