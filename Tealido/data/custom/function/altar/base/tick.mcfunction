execute on vehicle run function custom:altar/base/_tick
execute unless predicate condition:tick/40t run return fail
execute unless entity @a[distance=..20,tag=debug] run return fail
execute on vehicle unless entity @s[tag=bonded] run return fail
execute on vehicle store result storage minecraft:temp cnt int 1 run scoreboard players get @s id
execute on vehicle store result storage minecraft:temp uid int 1 run scoreboard players get @s uid
execute on vehicle run function custom:altar/base/debug with storage minecraft:temp