execute unless items entity @s contents *[custom_data~{"tower_stone":1b}] run return run \
execute if predicate condition:tick/10t run particle minecraft:firework ~ ~0.2 ~ 0.3 0.2 0.3 0 3 normal
#石碑粒子
execute if predicate condition:tick/60t if predicate condition:chance/chance50 run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 0.17 1
execute if items entity @s contents *[custom_data~{"id":"tear_of_courage"}] if predicate condition:tick/3t run particle minecraft:bubble_pop ~ ~0.2 ~ 0.3 0.2 0.3 0 3 normal
execute if items entity @s contents *[custom_data~{"id":"temperance_in_bottle"}] if predicate condition:tick/10t run particle minecraft:end_rod ~ ~0.2 ~ 0.3 0.2 0.3 0 1 normal
execute if items entity @s contents *[custom_data~{"id":"the_bell_of_justice"}] if predicate condition:tick/10t run particle minecraft:falling_dust{"block_state":"minecraft:gold_block"} ~ ~0.2 ~ 0.3 0.2 0.3 0 5 normal
#加载
execute if entity @s[tag=loaded] run return fail
data modify entity @s Invulnerable set value 1b
data modify entity @s Fixed set value 1b
execute if items entity @s contents *[custom_data~{"id":"tear_of_courage"}] run scoreboard players set #tear_of_courage gamerule 1
execute if items entity @s contents *[custom_data~{"id":"temperance_in_bottle"}] run scoreboard players set #temperance_in_bottle gamerule 1
execute if items entity @s contents *[custom_data~{"id":"the_bell_of_justice"}] run scoreboard players set #the_bell_of_justice gamerule 1
tag @s add loaded
playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.amethyst_cluster.break block @a ~ ~ ~ 1 0.4
playsound minecraft:entity.evoker.cast_spell block @a ~ ~ ~ 0.4 1.7
particle minecraft:flash{color:-1} ~ ~0.2 ~ ~ ~ ~ 0 0 normal
execute positioned ~ ~0.2 ~ run function effects:particle/circle/end_rod/mini
execute positioned ~ ~ ~ run function effects:particle/circle/end_rod/mini_out_1
data modify entity @s CustomNameVisible set value 1b