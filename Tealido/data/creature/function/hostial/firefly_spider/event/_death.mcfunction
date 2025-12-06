playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 0.6 2
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 0.4 1.6
particle minecraft:flash ~ ~ ~ 0 0 0 0 0 normal
particle minecraft:entity_effect{color:-4526} ~ ~0.3 ~ 0.5 0.6 0.5 0.05 7 normal
particle minecraft:dust_color_transition{from_color:16772695,scale:2,to_color:16775353} ~ ~0.3 ~ 0.8 0.6 0.8 0.05 12 normal
effect give @e[type=!#minecraft:none,distance=..6] minecraft:glowing 2 1 false
#effect give @a[distance=..5] minecraft:nausea 6 255 false