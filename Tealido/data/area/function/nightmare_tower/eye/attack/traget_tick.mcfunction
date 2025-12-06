scoreboard players add @s nightmare_eye 1
execute if score @s nightmare_eye matches 15 run function area:nightmare_tower/eye/attack/_spawn
execute if score @s nightmare_eye matches 30 run function area:nightmare_tower/eye/attack/_spawn
execute if score @s nightmare_eye matches 45 run function area:nightmare_tower/eye/attack/_spawn
execute if score @s nightmare_eye matches 60 if predicate condition:chance/chance50 run function area:nightmare_tower/eye/attack/_spawn
execute unless score @s nightmare_eye matches 60.. run return fail
scoreboard players reset @s nightmare_eye