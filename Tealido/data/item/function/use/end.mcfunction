#清除
tag @s remove use
#Using
tag @s add return_used
execute if entity @s[tag=usinger] at @s run function item:_click
tag @s remove return_used
#清除
tag @s remove usinger
#蓄力
scoreboard players reset @s energy
#scoreboard players reset @s enchant.multi_charge