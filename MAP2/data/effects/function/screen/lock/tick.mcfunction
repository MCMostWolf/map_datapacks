execute if entity @s[type=minecraft:player] run return fail
scoreboard players remove @s effects 1
execute unless score @s effects matches ..0 on passengers on origin run return run rotate @s ~ ~
execute on passengers run kill @s
kill @s