fill ~ ~ ~ ~ ~1 ~ air replace minecraft:pale_oak_wood
fill ~ ~ ~ ~ ~1 ~ air replace minecraft:pale_oak_log
execute align xyz run particle minecraft:block{block_state:"minecraft:pale_oak_wood"} ~0.5 ~1 ~0.5 \
0.5 1 0.5 0 80 normal
playsound minecraft:entity.creaking.spawn hostile @a ~ ~ ~ 1 1.3