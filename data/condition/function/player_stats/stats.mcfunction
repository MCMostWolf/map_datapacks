execute if predicate condition:player_stats/jump run function condition:player_stats/input_keybind/jump
execute if predicate condition:player_stats/sneak run function condition:player_stats/input_keybind/sneak
execute if predicate condition:player_stats/sprint run function condition:player_stats/input_keybind/sprint

execute if entity @s[tag=condition.jumping] unless predicate condition:player_stats/jump run function condition:player_stats/input_keybind/jump_end
execute if entity @s[tag=condition.sneaking] unless predicate condition:player_stats/sneak run function condition:player_stats/input_keybind/sneak_end
execute if entity @s[tag=condition.sprinting] unless predicate condition:player_stats/sprint run function condition:player_stats/input_keybind/sprint_end