$function creature:hostial/$(spawn_creature_id)/_spawn
playsound minecraft:entity.illusioner.mirror_move block @a ~ ~ ~ 0.3 2
particle minecraft:witch ~ ~ ~ 0 0.3 0 0.05 30 normal
execute on passengers run kill @s
kill @s