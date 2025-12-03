
particle minecraft:ash ~ ~1.3 ~ 0.5 0.6 0.5 0.05 15 normal
particle minecraft:dust_color_transition{from_color:7491622,scale:1.5,to_color:12168348} ~ ~1 ~ 0.5 0.6 0.5 0.05 10 normal
execute unless predicate condition:tick/40t run return fail
playsound minecraft:entity.camel.eat hostile @a ~ ~ ~ 1 1
effect give @a[distance=..2.5] minecraft:nausea 6 255 false