scoreboard players operation #temp skill_cnt = @s skill_cnt
execute as @e[type=minecraft:block_display,tag=teleporter,tag=!enbled] on passengers if entity @s[type=minecraft:interaction] \
if score @s skill_cnt = #temp skill_cnt \
on vehicle run tag @s add enble
$execute on target run tp $(x) $(y) $(z)