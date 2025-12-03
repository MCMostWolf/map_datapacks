
execute on passengers if entity @s[type=minecraft:area_effect_cloud] on origin run tag @s add atf_user
rotate @s ~0.3 ~
execute on passengers if entity @s[type=minecraft:item_display] at @s run function item:artifact/pearl_of_monument/display

execute rotated ~72 ~ run function item:artifact/pearl_of_monument/particle
execute rotated ~144 ~ run function item:artifact/pearl_of_monument/particle
execute rotated ~-72 ~ run function item:artifact/pearl_of_monument/particle
execute rotated ~-144 ~ run function item:artifact/pearl_of_monument/particle
execute rotated ~ ~ run function item:artifact/pearl_of_monument/particle

particle minecraft:item{item:{id:"ender_pearl"}} ~ ~-0.5 ~ 0.15 0.1 0.15 0 1 normal

execute if predicate condition:tick/80t run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 0.7 0.8
execute on passengers if entity @s[type=minecraft:area_effect_cloud] on origin run tag @s remove atf_user