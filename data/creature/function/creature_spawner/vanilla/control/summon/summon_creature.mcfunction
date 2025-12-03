$function creature:hostial/$(spawn_creature_id)/_spawn
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 0.3 1.6
particle minecraft:flame ~ ~ ~ 0 0.3 0 0.05 30 normal
execute on passengers run kill @s
kill @s