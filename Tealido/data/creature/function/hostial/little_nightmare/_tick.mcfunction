execute if entity @s[tag=!invisible] if predicate condition:tick/10t unless function creature:hostial/little_nightmare/control/hide/condition run \
function creature:hostial/little_nightmare/control/hide/hide

execute if entity @s[tag=invisible] if predicate condition:tick/10t if function creature:hostial/little_nightmare/control/hide/condition run \
function creature:hostial/little_nightmare/control/hide/invisible

execute if predicate condition:tick/10t if entity @s[tag=!invisible] run particle minecraft:falling_obsidian_tear ~ ~0.5 ~ 0.4 0.4 0.4 0.1 10 normal
execute on passengers at @s run function creature:hostial/little_nightmare/render/spin