scoreboard players add @s skill_time 1
execute unless score @s skill_time matches 140.. run return fail
#自清除
particle minecraft:poof ~ ~0.3 ~ 0.2 0.2 0.2 0 0 normal
particle minecraft:poof ~ ~0.3 ~ 0.3 0.2 0.2 0 0 normal
playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 0.4 2
tp @s ~ -60 ~
function creature:_creature/bond/_death
kill @s