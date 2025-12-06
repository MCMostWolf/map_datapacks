execute if entity @e[type=minecraft:item_display,distance=..0.01,tag=chair] run return fail
summon minecraft:item_display ~ ~ ~ {Tags:["chair"]}
ride @s mount @n[type=minecraft:item_display,distance=..0.01,tag=chair]
playsound minecraft:entity.player.attack.nodamage player @a ~ ~ ~ 0.2 1.6
playsound minecraft:item.armor.equip_turtle player @a ~ ~ ~ 0.4 1.6