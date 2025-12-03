particle minecraft:item{item:"minecraft:azalea_leaves"} ~ ~1.5 ~ 0.4 0.8 0.4 0.05 20 normal
playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 0.5 0.8
scoreboard players add @s skill_cnt2 1
execute if items entity @s weapon.offhand minecraft:shield run return run function creature:hostial/verdure_knight/event/block