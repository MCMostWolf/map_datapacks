execute if predicate condition:tick/3t on vehicle on passengers if entity @s[type=minecraft:armor_stand] run function custom:altar/animation/trail/_spawn
scoreboard players add @s skill_time 1

execute if score @s skill_time matches 150.. run tag @s add altar.unuse

execute unless score @s tick matches 240.. run return fail

particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.05 20 normal
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.05 10 normal
#particle minecraft:large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0 6 force
#particle minecraft:smoke ~ ~0.5 ~ 0.5 0.5 0.5 0 20 normal
#playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.3 1.6
playsound minecraft:item.trident.return block @a ~ ~ ~ 0.7 1.5
#playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 0.1 1.5
item replace entity @s contents with minecraft:air

scoreboard players reset @s tick
scoreboard players reset @s skill_time
tag @s remove altar.unuse
tag @s remove altar.crafting