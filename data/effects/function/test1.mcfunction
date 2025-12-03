
function effects:test3
execute positioned ~ ~-0.05 ~-0.05 run function effects:test3
execute positioned ~ ~0.05 ~0.05 run function effects:test3
#execute positioned ~ ~0.7 ~0.4 rotated 0 -20 run function effects:test3
#execute positioned ~ ~0.7 ~-0.3 rotated 0 70 run function effects:test3
particle minecraft:end_rod ^ ^ ^4 ^ ^ ^-90000 0.000006 0
execute rotated 0 30 run particle minecraft:end_rod ^ ^ ^4 ^ ^ ^-90000 0.0000068 0
execute rotated 0 20 run particle minecraft:end_rod ^ ^-0.4 ^4 ^ ^ ^-90000 0.0000065 0
execute rotated 0 -50 run particle minecraft:end_rod ^ ^0.5 ^4 ^ ^ ^-90000 0.000007 0
execute rotated 0 -70 run particle minecraft:end_rod ^ ^1 ^4 ^ ^ ^-90000 0.000006 0

execute rotated 0 80 run particle minecraft:end_rod ^ ^-1 ^4 ^ ^ ^-90000 0.0000063 0
execute rotated 0 50 run particle minecraft:end_rod ^ ^0.7 ^4 ^ ^ ^-90000 0.0000073 0
execute rotated 0 -30 run particle minecraft:end_rod ^ ^-0.8 ^4 ^ ^ ^-90000 0.0000062 0
execute rotated 0 -70 run particle minecraft:end_rod ^ ^-1.2 ^4 ^ ^ ^-90000 0.0000067 0