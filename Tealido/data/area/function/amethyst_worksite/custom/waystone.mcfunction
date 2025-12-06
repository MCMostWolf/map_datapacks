
tellraw @a \
[{"text":"₪|☲=","extra":[{"translate":"area.amethyst_worksite.name"},{"text":"=☲|₪"}],"color":"#be6fff","shadow_color":-11592862}]
data merge storage minecraft:text \
{"text":'\
[{"text":"₪|☲=","extra":[{"translate":"area.amethyst_worksite.name"},{"text":"=☲|₪"}],"color":"#be6fff","shadow_color":-11592862}]\
',"scale":[0,2.5,2.5],"translation":[0,3.6,0],"see_through":0b,"billboard":"vertical"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function effects:screen/close_text/_spawn with storage minecraft:text

tellraw @a \
[{"text":"₪","extra":[{"text":"Area II"},{"text":"₪"}],"color":"#be6fff","shadow_color":-11592862}]
data merge storage minecraft:text \
{"text":'\
[{"text":"₪","extra":[{"text":"Area II"},{"text":"₪"}],"color":"#be6fff","shadow_color":-11592862}]\
',"scale":[0,1.75,1.75],"translation":[0,3.2,0],"see_through":0b,"billboard":"vertical"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function effects:screen/close_text/_spawn with storage minecraft:text
