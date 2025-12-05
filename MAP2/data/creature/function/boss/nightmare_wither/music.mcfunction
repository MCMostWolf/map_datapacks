stopsound @a[distance=..20] record
$execute positioned $(x) $(y) $(z) run playsound minecraft:music_disc.tears record @a ~-6 ~ ~ 0.3 1.1
$execute positioned $(x) $(y) $(z) run playsound minecraft:music_disc.tears record @a ~6 ~ ~ 0.3 1.1
$execute positioned $(x) $(y) $(z) run playsound minecraft:music_disc.tears record @a ~ ~ ~-6 0.3 1.1
$execute positioned $(x) $(y) $(z) run playsound minecraft:music_disc.tears record @a ~ ~ ~6 0.3 1.1
scoreboard players set #music cd 3120