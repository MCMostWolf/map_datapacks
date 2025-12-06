item replace entity @s armor.head with minecraft:acacia_boat[item_model="minecraft:air",\
minecraft:enchantments={"custom:creaking_heart":1}]
#标签
tag @s add creaking_heart.heart
tag @s remove loading
#Debug

function effects:screen/talking_text/_spawn \
{"text":'[{"text":"Creaking Heart Enble!","bold":true,"color":"gold"}]',"scale":[0,1.25,1.25],"translation":[0,-1,0],"time":40,"see_through":1b}