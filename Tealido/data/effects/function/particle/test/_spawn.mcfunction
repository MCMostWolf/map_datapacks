summon armor_stand ~ ~ ~ {NoAI:1b,Invisible:1b,Marker:1b,Tags:["effects.load","effects.entity","passenger"]}
function tool:quick_cmd/game/bond {bond:"@s",ride:"@n[distance=..0.01,type=minecraft:armor_stand,tag=effects.load]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=effects.load] run function effects:particle/test/load
#音效模拟
#playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 1 1.3