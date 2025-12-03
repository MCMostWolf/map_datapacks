execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
execute if entity @s[tag=altar.base] run function custom:altar/base/_place
execute if entity @s[tag=altar.core] run function custom:altar/core/_place
kill @s