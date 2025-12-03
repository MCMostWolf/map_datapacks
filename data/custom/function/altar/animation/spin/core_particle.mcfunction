execute if predicate condition:tick/40t run playsound minecraft:block.conduit.ambient block @a ~ ~-2 ~ 0.4 1.5
execute if predicate condition:tick/60t run playsound minecraft:block.beacon.ambient block @a ~ ~-2 ~ 0.5 1.3
particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute unless entity @s[tag=altar.crafted] run return fail
particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 2.5 2 2.5 0 1 normal
execute on vehicle on passengers if entity @s[type=minecraft:armor_stand] at @s run function custom:altar/animation/spin/core_particle_1
execute rotated ~ ~ run function custom:altar/animation/spin/core_spin_particle
execute rotated ~72 ~ run function custom:altar/animation/spin/core_spin_particle
execute rotated ~144 ~ run function custom:altar/animation/spin/core_spin_particle
execute rotated ~-72 ~ run function custom:altar/animation/spin/core_spin_particle
execute rotated ~-144 ~ run function custom:altar/animation/spin/core_spin_particle