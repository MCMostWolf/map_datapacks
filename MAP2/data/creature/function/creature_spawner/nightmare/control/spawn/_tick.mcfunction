#数量
execute unless score @s skill_cnt matches 1.. run return run function creature:creature_spawner/nightmare/control/spawn/end
function creature:creature_spawner/nightmare/render/shake
execute if predicate condition:tick/3t positioned ~ ~0.6 ~ run function creature:creature_spawner/nightmare/control/spawn/spawn with entity @s data