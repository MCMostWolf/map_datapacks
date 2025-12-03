damage @s 25 minecraft:player_attack by @p[distance=0..,tag=atf_user]
tag @s remove atf_traget
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.7 1.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.1 2
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 0.6 1.2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.6 0.7
particle minecraft:explosion ~ ~ ~ 1 0 0 0 0 force
particle minecraft:lava ~ ~ ~ 0 0 0 0.08 5 normal
particle minecraft:smoke ~ ~ ~ 0 0 0 0.08 20 normal
particle minecraft:flame ~ ~ ~ 0 0 0 0.08 20 normal