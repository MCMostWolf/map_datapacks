execute unless entity @s[tag=loaded] run function core:creature/_load
execute if entity @s[type=minecraft:player] run return run function player:_tick
tag @s add creature.hurt
execute if entity @n[distance=..0,tag=creature.hurt] run return run \
tag @s remove creature.hurt
function core:creature/hurt/_death
data modify storage temp creature_id set from entity @s[type=!#minecraft:noplayerne] data.creature_id
function core:creature/hurt/_event with storage temp
#execute if entity @s[tag=condition.playing,tag=condition.sneaking]
#scoreboard players remove @s invul 1