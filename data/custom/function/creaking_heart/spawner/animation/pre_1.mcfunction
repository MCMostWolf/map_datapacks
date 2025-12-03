
particle minecraft:block{block_state:"minecraft:pale_oak_wood"} ~0.5 ~0.5 ~0.5 \
0.5 0.5 0.5 0 30 normal
playsound minecraft:block.creaking_heart.place hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.creaking.attack hostile @a ~ ~ ~ 0.8 1.6
execute if predicate condition:chance/chance50 run return run setblock ~ ~ ~ minecraft:pale_oak_log destroy
setblock ~ ~ ~ minecraft:pale_oak_wood destroy