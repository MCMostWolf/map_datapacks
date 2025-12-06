execute if predicate condition:chance/chance20 run return fail
execute if items entity @s weapon.mainhand minecraft:stone_sword run return fail
item replace entity @s weapon.mainhand with minecraft:stone_sword[minecraft:enchantments={"minecraft:fire_aspect":1}]
execute at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.15 30 normal
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 0.3 0.8
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 0.7 2