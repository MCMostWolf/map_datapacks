$function creature:hostial/$(spawn_creature_id)/_spawn
playsound minecraft:block.trial_spawner.spawn_mob block @a ~ ~ ~ 0.8 2
playsound minecraft:block.trial_spawner.ominous_activate block @a ~ ~ ~ 0.4 1.5
function creature:creature_spawner/default/particle/circle3
execute on passengers run kill @s
kill @s