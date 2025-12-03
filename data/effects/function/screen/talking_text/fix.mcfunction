tag @s add effects.self
execute unless entity @e[distance=..0.01,type=minecraft:text_display,tag=effects.entity,tag=!effects.self] run return run tag @s remove effects.self
tp ~ ~0.5 ~
execute at @s run function effects:screen/talking_text/fix