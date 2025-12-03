summon minecraft:item_display ~ ~ ~ {Tags:["loading"],start_interpolation:0,interpolation_duration:5,teleport_duration:1}
execute as @n[distance=..0.01,type=minecraft:item_display,tag=loading] run function custom:altar/core/load
playsound minecraft:block.heavy_core.place block @a ~ ~ ~ 1 0.7
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 0.3 1.2
particle minecraft:flash{color:-6487809} ~ ~0.6 ~ 0 0 0 0 0 force