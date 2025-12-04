execute as @e[tag=!lj.core.T.Registered] at @s run function lj.core:register
function #lj.core:tick
execute as @a at @s run function #lj.core:tick_a
execute as @e at @s run function #lj.core:tick_e
function #lj.core:tick_end
scoreboard players add $lj.core.V.clock lj.INT 1
schedule function lj.core:__tick__ 1t