execute if items entity @s weapon.offhand *[custom_data~{"id":"pearl_of_monument"}] run return run \
function item:artifact/pearl_of_monument/tp
function item:artifact/eye_of_monument/particle
execute positioned -59.5 257 -49.5 run tp ~ ~ ~
execute positioned -59.5 257 -49.5 run function item:artifact/eye_of_monument/particle
title @s actionbar [{"text":"-*-=₪|☲| [⧈] |☲|₪=-*-","color":"#f158ff","bold":false,\
"shadow_color":-7926867}]