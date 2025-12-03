execute store result score #temp temp run data get entity @s transformation.translation.[0] 10
execute store result score #random_temp temp run random value -300..300
scoreboard players operation #temp temp += #random_temp temp
execute store result entity @s transformation.translation.[0] float 0.1 run scoreboard players get #temp temp
execute store result score #temp temp run data get entity @s transformation.translation.[1] 10
execute store result score #random_temp temp run random value -300..300
scoreboard players operation #temp temp += #random_temp temp
execute store result entity @s transformation.translation.[1] float 0.1 run scoreboard players get #temp temp