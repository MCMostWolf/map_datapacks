
tellraw @a \
[{"text":"₪|☲=","extra":[{"translate":"area.molten_cave.name"},{"text":"=☲|₪"}],"color":"#95733f","shadow_color":-12112863}]
data merge storage minecraft:text \
{"text":'\
[{"text":"₪|☲=","extra":[{"translate":"area.molten_cave.name"},{"text":"=☲|₪"}],"color":"#95733f","shadow_color":-12112863}]\
',"scale":[0,2.5,2.5],"translation":[0,3.6,0],"see_through":0b,"billboard":"vertical"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function effects:screen/close_text/_spawn with storage minecraft:text

tellraw @a \
[{"text":"₪","extra":[{"text":"Area III"},{"text":"₪"}],"color":"#95733f","shadow_color":-12112863}]
data merge storage minecraft:text \
{"text":'\
[{"text":"₪","extra":[{"text":"Area III"},{"text":"₪"}],"color":"#95733f","shadow_color":-12112863}]\
',"scale":[0,1.75,1.75],"translation":[0,3.2,0],"see_through":0b,"billboard":"vertical"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function effects:screen/close_text/_spawn with storage minecraft:text
