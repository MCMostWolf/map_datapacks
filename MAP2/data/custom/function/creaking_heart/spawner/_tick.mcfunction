#计时
scoreboard players add @s tick 1
#动画
execute if score @s tick matches 5 run function custom:creaking_heart/spawner/animation/pre_1
#
execute if score @s tick matches 10 positioned ~ ~1 ~ run function custom:creaking_heart/spawner/animation/pre_1
#生成
execute unless score @s tick matches 15.. run return fail
function custom:creaking_heart/spawner/animation/pre_2
execute on passengers on origin at @s run function custom:creaking_heart/spawner/pos_get
execute on passengers on origin run function creature:hostial/creaking/_spawn
#
execute on passengers run kill @s
kill @s