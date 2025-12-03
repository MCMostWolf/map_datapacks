execute as @e[distance=..18,type=minecraft:text_display ,tag=altar.trail] at @s run function custom:altar/animation/trail/_tick
execute as @e[distance=..18,type=minecraft:text_display ,tag=altar.trail] run rotate @s facing ~ ~ ~

kill @e[distance=..0.2,type=minecraft:text_display ,tag=altar.trail]

execute if score @s tick matches 150.. run tag @s add altar.unuse

execute if score @s tick matches 20..240 if predicate condition:tick/5t run playsound minecraft:block.conduit.deactivate block @a ~ ~ ~ 0.05 0
execute unless score @s tick matches 300.. run return fail

kill @e[distance=..18,type=minecraft:text_display ,tag=altar.trail]

function custom:altar/animation/crafting/crafted with entity @s data
playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 0.7 0.9
playsound minecraft:item.trident.thunder block @a ~ ~ ~ 1 1.8
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 0.8
playsound minecraft:block.amethyst_cluster.break block @a ~ ~ ~ 0.3 0.7
particle minecraft:enchant ~ ~1 ~ 2.5 2.5 2.5 0 70 force
particle minecraft:end_rod ~ ~1 ~ 2.5 2.5 2.5 0 20 force
particle minecraft:flash{color:-3606017} ~ ~1 ~ 0 0 0 0 2 force
particle minecraft:flash{color:-3606017} ~ ~ ~ 1 1 1 0 30 normal
execute positioned ~ ~-0.8 ~ run function effects:particle/circle/end_rod/mini_out_2
execute positioned ~ ~-0.8 ~ run function effects:particle/circle/end_rod/mini_out_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/firework/mini
data modify entity @s Glowing set value 1b

scoreboard players reset @s tick
tag @s remove altar.crafting
tag @s remove altar.unuse
tag @s add altar.crafted