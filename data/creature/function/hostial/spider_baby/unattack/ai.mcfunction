ride @s mount @n[distance=..0.01,type=minecraft:cave_spider,tag=loading]
tag @s add creature.bond.passengers
data merge entity @s {Silent:1b}
damage @s 0.01 player_attack
data merge entity @s {Invulnerable:1b}
attribute @s minecraft:scale base set 0.01
effect give @s minecraft:invisibility infinite 255 true
item replace entity @s weapon.mainhand with minecraft:air