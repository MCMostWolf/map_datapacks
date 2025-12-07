scoreboard players add #monu_title gamerule 1

execute if score #monu_title gamerule matches 80 run title @a times 0s 4s 1s
execute if score #monu_title gamerule matches 80 run title @a subtitle ""
execute if score #monu_title gamerule matches 103..119 run playsound minecraft:block.amethyst_cluster.break master @a ~ ~100 ~ 10000 2
execute if score #monu_title gamerule matches 103 run title @a title [{"text":"N","color":"dark_gray"}]
execute if score #monu_title gamerule matches 104 run title @a title [{"text":"No","color":"dark_gray"}]
execute if score #monu_title gamerule matches 105 run title @a title [{"text":"No M","color":"dark_gray"}]
execute if score #monu_title gamerule matches 106 run title @a title [{"text":"No Ma","color":"dark_gray"}]
execute if score #monu_title gamerule matches 107 run title @a title [{"text":"No Man","color":"dark_gray"}]
execute if score #monu_title gamerule matches 109 run title @a title [{"text":"No Man's","color":"dark_gray"}]
execute if score #monu_title gamerule matches 108 run title @a title [{"text":"No Man's S","color":"dark_gray"}]
execute if score #monu_title gamerule matches 109 run title @a title [{"text":"No Man's Sp","color":"dark_gray"}]
execute if score #monu_title gamerule matches 110 run title @a title [{"text":"No Man's Spa","color":"dark_gray"}]
execute if score #monu_title gamerule matches 112 run title @a title [{"text":"No Man's Spati","color":"dark_gray"}]
execute if score #monu_title gamerule matches 113 run title @a title [{"text":"No Man's Spatia","color":"dark_gray"}]
execute if score #monu_title gamerule matches 114 run title @a title [{"text":"No Man's Spatial","color":"dark_gray"}]
execute if score #monu_title gamerule matches 115 run title @a title [{"text":"No Man's Spatial L","color":"dark_gray"}]
execute if score #monu_title gamerule matches 116 run title @a title [{"text":"No Man's Spatial Lo","color":"dark_gray"}]
execute if score #monu_title gamerule matches 117 run title @a title [{"text":"No Man's Spatial Log","color":"dark_gray"}]
execute if score #monu_title gamerule matches 118 run title @a title [{"text":"No Man's Spatial Logi","color":"dark_gray"}]
execute if score #monu_title gamerule matches 119 run title @a title [{"text":"No Man's Spatial Logic","color":"dark_gray"}]


execute if score #monu_title gamerule matches 139 run title @a title [{"text":"No Man's Spatial Logic","color":"#8fff6a",shadow_color:-935547904}]
execute if score #monu_title gamerule matches 139 run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10000 0.6
execute if score #monu_title gamerule matches 139 run playsound ui.toast.challenge_complete master @a ~ ~100 ~ 10000 1.2
execute if score #monu_title gamerule matches 139 run playsound minecraft:music_disc.blocks master @a ~ ~100 ~ 10000 1
execute if score #monu_title gamerule matches 230 run title @a times 2s 5s 2s
execute if score #monu_title gamerule matches 230 run title @a title [{"text":"Thank you for playing!!!","color":"#8fff6a",shadow_color:-935547904}] 

execute if score #monu_title gamerule matches 133 run \
setblock -175 130 133 spawner\
{SpawnCount:3,SpawnRange:10,Requidark_grayPlayerRange:40,Delay:0,MinSpawnDelay:50,MaxSpawnDelay:60,SpawnPotentials:\
[{data:{entity:{id:"minecraft:firework_rocket",FireworksItem:{id:"minecraft:firework_rocket",\
count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,\
colors:[16777029]},{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[16711680]}]}}}}},weight:1}]}