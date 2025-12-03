summon minecraft:item_display ~ ~ ~ {Tags:["loading"],start_interpolation:0,interpolation_duration:5,teleport_duration:1}
execute as @n[distance=..0.01,type=minecraft:item_display,tag=loading] run function custom:altar/base/load
playsound minecraft:block.lodestone.place block @a ~ ~ ~ 1 0.7