tag @s remove condition.redirectable_projectile
tag @s add condition.redirected
execute if entity @s[type=#minecraft:arrows] at @s run playsound minecraft:entity.arrow.hit player @a ~ ~ ~ 0.7 1.6
execute if entity @s[type=#deflects_projectiles] at @s run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 0.5 1.6
execute if entity @s[type=#minecraft:potion] at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 0.6 1.3
execute if function condition:events/orign_with_sword run function core:gamerule/redirectable_projectile/high_speed
execute at @s run playsound minecraft:item.shield.block player @a ~ ~ ~ 0.5 1.3
execute at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.05 5 normal
execute at @s run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.05 3 normal