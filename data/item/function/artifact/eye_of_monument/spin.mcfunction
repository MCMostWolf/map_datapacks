rotate @s ~12 ~
particle minecraft:dragon_breath ^ ^0.5 ^1.2 0 0.4 0 0.2 0 normal
particle minecraft:dragon_breath ^ ^0.5 ^-1.2 0 0.4 0 0.2 0 normal


particle minecraft:enchant ^ ^4 ^-1.8 0 -1 0 3 0 force
particle minecraft:enchant ^ ^4 ^1.8 0 -1 0 3 0 force

particle minecraft:end_rod ^ ^0.5 ^1.2 0 -10000000 0 10000 0 normal
particle minecraft:end_rod ^ ^0.5 ^-1.2 0 -10000000 0 10000 0 normal

execute unless items entity @p[tag=atf_user] weapon.offhand *[custom_data~{"id":"pearl_of_monument"}] run return fail

particle minecraft:dust_color_transition{from_color:9902079,scale:0.8,to_color:2949248} ^ ^1.2 ^-2 0 0 0 0 0 force
particle minecraft:end_rod ^ ^1.2 ^-2 0 -10000000 0 100000 0 force
particle minecraft:dust_color_transition{from_color:9902079,scale:0.8,to_color:2949248} ^ ^1.2 ^2 0 0 0 0 0 force
particle minecraft:end_rod ^ ^1.2 ^2 0 -10000000 0 100000 0 force

particle minecraft:dust_color_transition{from_color:9902079,scale:0.8,to_color:2949248} ^-2 ^1.2 ^ 0 0 0 0 0 force
particle minecraft:end_rod ^-2 ^1.2 ^ 0 -10000000 0 100000 0 force
particle minecraft:dust_color_transition{from_color:9902079,scale:0.8,to_color:2949248} ^2 ^1.2 ^ 0 0 0 0 0 force
particle minecraft:end_rod ^2 ^1.2 ^ 0 -10000000 0 100000 0 force