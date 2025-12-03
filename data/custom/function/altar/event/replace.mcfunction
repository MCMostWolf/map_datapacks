
playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 0.5 1.6

execute if entity @s[tag=altar.base] run return run \
playsound block.lodestone.break player @a ~ ~ ~ 0.5 1.6


execute on passengers if entity @s[tag=altar.crafted] run data modify entity @s Glowing set value 0b
execute on passengers if entity @s[tag=altar.crafted] run tag @s remove altar.crafted

execute on passengers if entity @s[tag=altar.item] unless items entity @s contents * run return run \
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.2 1.7

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.1 2
playsound minecraft:block.beacon.ambient block @a ~ ~-2 ~ 0.5 1.3