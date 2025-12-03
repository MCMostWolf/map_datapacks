playsound minecraft:item.trident.return player @s ~ ~ ~ 0.7 1.2
playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 0.8 1.5
scoreboard players operation @s artifact_cd_int = @s artifact_cd
scoreboard players operation @s artifact_cd_int /= #math20 math
title @s actionbar [{"text":"-*-=₪|☲| [⌛] : 0s |☲|₪=-*-","color":"#3fffe5","bold":false,\
"shadow_color":-16751521}]