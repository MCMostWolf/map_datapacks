
execute positioned ~-2 ~-1 ~-2 as @e[dx=3,dy=1,dz=3,type=minecraft:player] run damage @s 10 minecraft:magic
execute positioned ~-2 ~-1 ~-2 as @e[dx=3,dy=1,dz=3,type=!#minecraft:noplayerne,tag=hostial] \
run damage @s 20 minecraft:magic
#效果
playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 0.5 0.6
playsound minecraft:item.honey_bottle.drink hostile @a ~ ~ ~ 0.3 1.4
playsound minecraft:entity.shulker_bullet.hurt hostile @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hurt hostile @a ~ ~ ~ 1 0
particle minecraft:item{item:"minecraft:slime_block"} ~ ~0.5 ~ 0.2 0.2 0.2 0.3 80 normal
particle minecraft:totem_of_undying ~ ~0.5 ~ 0 0 0 0.5 80 normal
particle minecraft:entity_effect{color:-1818034337} ~ ~0.5 ~ 1 1 1 0 50 normal
particle minecraft:flash{color:-1701183663} ~ ~0.5 ~ 0 0 0 0 0 normal
particle minecraft:spore_blossom_air ~ ~0.5 ~ 0 0 0 1 20 normal
particle minecraft:sneeze ~ ~0.5 ~ 1 1 1 0.01 70 normal
#
effect give @s minecraft:invisibility infinite 1 true