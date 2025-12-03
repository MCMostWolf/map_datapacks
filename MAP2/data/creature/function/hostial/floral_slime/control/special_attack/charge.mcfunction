playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 0.5 0.7
particle minecraft:flash{color:-626196582} ~ ~1.5 ~ 0 0 0 0 1 normal
execute positioned ~ ~0.8 ~ run function effects:particle/circle/firework/mini
execute rotated ~ -5 run function tool:quick_cmd/entity/_motion {speed:2}
data modify entity @s Motion set from storage minecraft:tool Motion
effect clear @s minecraft:slowness