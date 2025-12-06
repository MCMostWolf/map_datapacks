#计时
scoreboard players add @s artifact_cd 1
execute if score @s artifact_cd matches 300.. run tag @s add return_success
execute on passengers on origin run tag @s add atf_user
execute facing entity @p[distance=0..,tag=atf_user] feet run tp @s ^ ^ ^0.4
execute if entity @p[distance=..0.6,tag=atf_user] run tag @s add return_success
execute on passengers on origin run tag @s remove atf_user
#粒子
particle minecraft:dust_color_transition{from_color:16759552,scale:1.8,to_color:15087104} ^ ^ ^0.4 0 0 0 0 0 force
particle minecraft:item{item:"minecraft:torchflower"} ^ ^ ^0.4 0.2 0.2 0.2 0 10 force
#爆裂
execute if entity @s[tag=!return_success] run return fail
particle minecraft:wax_on \
~ ~ ~ 0.4 0.4 0.4 0 10 normal
playsound minecraft:block.creaking_heart.spawn player @a ~ ~ ~ 0.3 0.6
execute on passengers run kill @s
kill @s