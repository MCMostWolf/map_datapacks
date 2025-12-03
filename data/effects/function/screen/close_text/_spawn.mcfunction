$summon minecraft:text_display ~ ~ ~ {Tags:["effects.load","effects.entity","effects.close_text"],\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:$(scale),translation:$(translation)},brightness:{block:15,sky:15},view_range:1,teleport_duration:2,billboard:"center",background:0,\
text:$(text),shadow:1b}
execute as @n[distance=..0.01,type=minecraft:text_display,tag=effects.load] run function effects:screen/close_text/load
#音效模拟
#playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1.3