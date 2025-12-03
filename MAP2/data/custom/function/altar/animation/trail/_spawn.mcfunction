#execute on vehicle on passengers if entity @s[tag=altar.base_1] run data modify storage minecraft:item temp set from entity @s item

summon minecraft:text_display ~ ~ ~ {Tags:["loading","altar.trail"]}

execute on vehicle run scoreboard players operation #temp uid = @s uid

execute as @n[distance=..16,type=minecraft:item_display,tag=altar.core] if score @s uid = #temp uid on passengers if entity @s[type=minecraft:armor_stand] run \
function tool:quick_cmd/entity/_bond {bond:"@s",ride:"@n[distance=..0.01,type=minecraft:text_display,tag=loading]"}

execute as @n[distance=..0.01,type=minecraft:text_display,tag=loading] run function custom:altar/animation/trail/load