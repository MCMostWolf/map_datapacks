execute unless function condition:entity_stats/has_traget run return fail
scoreboard players set @s skill 3
execute if predicate condition:chance/chance20 run scoreboard players reset @s skill_cd
execute if predicate condition:chance/chance60 run return run scoreboard players set @s skill_cd3 100
execute if predicate condition:chance/chance60 run return run scoreboard players set @s skill_cd3 200
scoreboard players set @s skill_cd3 30