
tellraw @a \
[{"text":"","extra":[{"translate":"text.monument_stone"},{"text":""}],"color":"#828580","shadow_color":-14144984}]
data merge storage minecraft:text \
{"text":'\
[{"text":"","extra":[{"translate":"text.monument_stone"},{"text":""}],"color":"#828580","shadow_color":-14144984}]\
',"scale":[0,1.75,1.75],"translation":[0,2.75,0],"see_through":0b,"billboard":"vertical"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function effects:screen/close_text/_spawn with storage minecraft:text
