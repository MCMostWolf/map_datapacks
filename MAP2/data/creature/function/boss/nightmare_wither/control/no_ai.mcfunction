rotate @s facing entity @p[distance=..20]
execute if entity @s[tag=unmove] run return fail
execute if block ~ ~ ~ #none if block ~ ~-0.2 ~ #none run tp @s ~ ~-0.2 ~