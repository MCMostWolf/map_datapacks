$summon armor_stand ~ ~ ~ {NoAI:1b,Invisible:1b,Marker:1b,Tags:["effects.load","effects.entity","passenger"],Passengers:[{id:"minecraft:text_display",Tags:["effects.entity","passenger"],\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:$(scale),translation:$(translation)},brightness:{block:15,sky:15},see_through:1b,view_range:3,billboard:"center",background:0,\
text:$(text),shadow:1b}]}
function tool:quick_cmd/entity/_bond {bond:"@s",ride:"@n[distance=..0.01,type=minecraft:armor_stand,tag=effects.load]"}
$execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=effects.load] run function effects:screen/italic_text/load {time:$(time)}
#音效模拟
#playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1.3