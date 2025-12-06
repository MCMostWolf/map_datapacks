execute on origin if entity @s[tag=condition.sprinting] run scoreboard players set #temp temp 1
execute on origin if entity @s[tag=!condition.sprinting] run scoreboard players set #temp temp 2
execute on origin at @s positioned ~-1.5 ~-0.5 ~-1.5 as @e[type=!minecraft:player,dx=2,dy=2,dz=2] at @s \
run function tool:quick_cmd/entity/_kill

execute on origin run item replace entity @s weapon.mainhand with minecraft:barrier
particle minecraft:flash{color:-1163657216} ~ ~ ~
playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 1 2
playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 1 1.6
playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 0.4 1.3
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.4

particle minecraft:dust_color_transition{from_color:16711680,scale:4,to_color:7929856} ~ ~ ~ 0 0 0 1 2 force
particle minecraft:dust_color_transition{from_color:16711680,scale:1,to_color:7929856} ~ ~ ~ 0 1.5 0 0 60 force
particle minecraft:dust_color_transition{from_color:16711680,scale:1,to_color:7929856} ~ ~ ~ 0 0 1.5 0 60 force
particle minecraft:dust_color_transition{from_color:16711680,scale:1,to_color:7929856} ~ ~ ~ 1.5 0 0 0 60 force

data merge storage minecraft:text \
{"text":'[{"text":"-* Nearby Entity Clear *-","bold":true,"color":"dark_red"}]',"scale":[0,1.25,1.25],"translation":[0,0.8,0],"time":40,"see_through":1b}
function effects:screen/talking_text/_spawn with storage minecraft:text

kill @s