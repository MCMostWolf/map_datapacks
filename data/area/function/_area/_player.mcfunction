scoreboard players operation #temp area = @s area 
execute unless score @s area_title matches -200.. run function area:_area/score
execute unless score #temp area = @s area run function area:_area/_load
execute if score @s area_title matches -30 run stopsound @s music
execute if score @s area_title matches -200..0 run scoreboard players add @s area_title 1
execute if score @s area matches 100 run return run function area:verdant_woods/_player
execute if score @s area matches 200 run return run function area:the_pale_nest/_player
execute if score @s area matches 300 run return run function area:amethyst_worksite/_player
execute if score @s area matches 400 run return run function area:molten_cave/_player
execute if score @s area matches 500 run return run function area:crying_corrosion_lands/_player
execute if score @s area matches 600 run return run function area:blazing_mire/_player
execute if score @s area matches 700 run return run function area:sculkvale_den/_player
execute if score @s area matches 800 run return run function area:nightmare_tower/_player