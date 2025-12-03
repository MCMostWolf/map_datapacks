
execute at @s if entity @a[distance=..8.5,tag=condition.playing] run return run execute if entity @s[tag=closing] run function effects:screen/close_text/display
execute at @s if entity @s[tag=!closing] run function effects:screen/close_text/close