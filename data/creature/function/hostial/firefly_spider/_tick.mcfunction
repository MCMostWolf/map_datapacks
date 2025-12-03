#效果
particle minecraft:dust_color_transition{from_color:16772695,scale:0.5,to_color:16775353} ~ ~0.3 ~ 0.5 0.4 0.5 0.05 10 normal
execute unless predicate condition:tick/20t run return fail
execute if predicate condition:chance/chance50 run playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 0.4 1.6
playsound minecraft:block.firefly_bush.idle hostile @a ~ ~ ~ 1 2
particle minecraft:firefly ~ ~0.2 ~ 0.5 0.5 0.5 0.05 7 normal
#技能
execute if score @s skill_cd matches 1.. run return run scoreboard players remove @s skill_cd 1
execute unless function condition:entity_stats/has_traget run return fail
function creature:hostial/ch.0/firefly_spider/ability/firefly