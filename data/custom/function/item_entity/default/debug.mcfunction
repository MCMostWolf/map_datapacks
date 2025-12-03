#Debug清除
execute on target if items entity @s[predicate=condition:player_stats/sneak] weapon.mainhand minecraft:structure_void run tag @n[distance=..0.01,type=minecraft:item_display,tag=item_entity.default] add pre_clear
execute on vehicle if entity @s[tag=!pre_clear] run return fail

playsound minecraft:entity.item.break block @a ~ ~ ~ 1 1.2
particle minecraft:block_marker{"block_state":"barrier"} ~ ~0.5 ~
function effects:screen/talking_text/_spawn \
{"text":'[{"text":"Entity Cleared!","bold":true,"color":"dark_red"}]',"scale":[0,1.25,1.25],"translation":[0,1,0],"time":40,"see_through":1b}
function custom:item_entity/default/clear