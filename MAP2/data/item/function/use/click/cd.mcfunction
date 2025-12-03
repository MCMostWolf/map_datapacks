playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.5 1.3
playsound minecraft:entity.illusioner.mirror_move player @s ~ ~ ~ 0.3 2
playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.7 1.7
scoreboard players operation @s artifact_cd_int = @s artifact_cd
scoreboard players operation @s artifact_cd_int /= #math20 math
title @s actionbar [{"text":"=₪| [⌛] : ","color":"#0099ff","bold":false,\
"shadow_color":-15387790},{"score":{"name":"*","objective":"artifact_cd_int"}},{"text":"s |₪="}]