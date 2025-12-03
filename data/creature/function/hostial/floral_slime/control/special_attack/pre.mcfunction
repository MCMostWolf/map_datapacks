effect give @s minecraft:slowness 2 255 true
execute positioned ~ ~0.8 ~ run function effects:particle/circle/cloud/mini_in
particle minecraft:flash{color:-626196582} ~ ~1.5 ~ 0 0 0 0 1 normal
execute rotated ~ 0 run function effects:screen/lock/_spawn {time:22}
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.3 0.7
playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 0.8 1.3
execute rotated ~180 -10 run function tool:quick_cmd/entity/_motion {speed:0.6}
data modify entity @s Motion set from storage minecraft:tool Motion