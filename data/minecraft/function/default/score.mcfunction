#储存uid分数
execute store result score @s uid run scoreboard players add #uid uid 1
execute store result storage temp uid int 1 run scoreboard players get @s uid