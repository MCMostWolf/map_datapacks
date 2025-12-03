particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.9 0.3 0.1 30 normal
particle minecraft:entity_effect{color:-1325692417} ~ ~0.7 ~ 0.3 0.9 0.3 0.1 20 normal
particle minecraft:flash{color:-221185} ~ ~0.4 ~ 0 0 0 0 0 normal
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.wandering_trader.drink_potion player @a ~ ~ ~ 1 1
#效果
effect give @s minecraft:weakness 7
effect give @s minecraft:instant_health 1 1
execute positioned ~ ~-0.7 ~ run function effects:particle/spiral/end_rod/circle_mini
