scoreboard players remove @s[scores={aft.bmc=0..}] aft.bmc 1
execute if score @s aft.bmc matches 60.. run function item:artifact/blessed_magma_cream/out_lava
execute if score @s aft.bmc matches 68 run effect clear @s minecraft:levitation
execute if entity @s[gamemode=spectator] run return fail
execute if score @s aft.bmc matches 1.. run function item:artifact/blessed_magma_cream/fire
execute unless score @s aft.bmc matches 1.. run function item:artifact/blessed_magma_cream/no_fire
#岩浆
execute if function item:artifact/blessed_magma_cream/block run return fail
effect give @s minecraft:levitation 1 19 false
effect give @s minecraft:fire_resistance 1 249 false
#function item:artifact/blessed_magma_cream/out_lava
function item:artifact/blessed_magma_cream/motion
scoreboard players set @s aft.bmc 80
attribute @s minecraft:safe_fall_distance modifier add blessed_magma_cream 10 add_value
#外观
particle minecraft:large_smoke ~ ~0.7 ~ 1 0.7 1 0.01 15 normal
particle minecraft:smoke ~ ~0.7 ~ 1.2 0.7 1.2 0.01 50 normal
execute positioned ~ ~0.8 ~ run function effects:particle/circle/small_flame/mini_out
execute positioned ~ ~1.8 ~ run function effects:particle/circle/flame/mini_out
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.7 1.5
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.45 1.2
playsound minecraft:entity.magma_cube.squish player @a ~ ~ ~ 0.65 1
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.4 0.7