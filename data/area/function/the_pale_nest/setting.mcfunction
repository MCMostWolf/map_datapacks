

execute if score @s gamerule_setting matches 1 run difficulty easy
execute if score @s gamerule_setting matches 1 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1.2

execute if score @s gamerule_setting matches 2 run difficulty normal
execute if score @s gamerule_setting matches 2 run playsound minecraft:event.mob_effect.trial_omen player @a ~ ~ ~ 0.5 1.2

execute if score @s gamerule_setting matches 3 run difficulty hard
execute if score @s gamerule_setting matches 3 run playsound minecraft:event.mob_effect.raid_omen player @a ~ ~ ~ 0.3 1.2

execute if score @s gamerule_setting matches 4 run playsound minecraft:entity.cat.ambient player @a ~ ~ ~ 1 1.3

execute if score @s gamerule_setting matches 5 run scoreboard objectives setdisplay list death_count
execute if score @s gamerule_setting matches 5 run playsound minecraft:block.conduit.deactivate player @a ~ ~ ~ 0.3 2

execute if score @s gamerule_setting matches 6 run scoreboard objectives setdisplay list health
execute if score @s gamerule_setting matches 6 run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 0.8 2

#execute if score @s gamerule_setting matches 7 run gamerule minecraft:pvp true

#execute if score @s gamerule_setting matches 8 run gamerule minecraft:pvp false

execute if score @s gamerule_setting matches 9 run scoreboard players set #glowing gamerule 1
execute if score @s gamerule_setting matches 9 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 2

execute if score @s gamerule_setting matches 10.. run scoreboard players reset #glowing gamerule
execute if score @s gamerule_setting matches 10.. run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.4 2
#
scoreboard players reset @s gamerule_setting