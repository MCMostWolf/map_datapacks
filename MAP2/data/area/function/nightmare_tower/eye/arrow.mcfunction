
particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0 15 force
playsound minecraft:entity.illusioner.prepare_mirror ambient @a ~ ~ ~ 0.7 2
playsound minecraft:block.glass.break ambient @a ~ ~ ~ 12 1.2
playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 12 1.2
playsound minecraft:weather.end_flash ambient @a ~ ~ ~ 12 2
playsound minecraft:weather.end_flash ambient @a ~ ~ ~ 12 2
playsound minecraft:weather.end_flash ambient @a ~ ~ ~ 12 2
execute on origin at @s run scoreboard players set @s nightmare_eye 1
execute on origin at @s run playsound minecraft:block.glass.break player @s ~ ~ ~ 0.3 1.2
kill @s