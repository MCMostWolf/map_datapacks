execute if score @s artifact_cd matches 1.. run return run function item:use/click/cd
$function item:$(type)/$(id)/_use
execute if score @s artifact_cd matches -357 run return run title @s actionbar [{"text":"-*-=₪|☲| [⌛] : -∞ |☲|₪=-*-","color":"#3fffe5","bold":false,\
"shadow_color":-16751521}]
$scoreboard players set @s artifact_cd $(cd)
scoreboard players operation @s artifact_cd_int = @s artifact_cd
scoreboard players operation @s artifact_cd_int /= #math20 math
title @s actionbar [{"text":"=₪| [⌛] : ","color":"#3f42ff","bold":false,\
"shadow_color":-14286722},{"score":{"name":"*","objective":"artifact_cd_int"}},{"text":"s |₪="}]