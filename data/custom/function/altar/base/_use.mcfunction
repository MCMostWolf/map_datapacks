execute on vehicle on passengers if entity @s[tag=altar.unuse] run return fail
function custom:altar/event/_replace
playsound block.lodestone.place player @a ~ ~ ~ 0.2 2



execute on vehicle run scoreboard players operation #temp uid = @s uid

execute as @e[distance=..16,type=minecraft:item_display,tag=altar.core] if score @s uid = #temp uid on passengers at @s if entity @s[tag=altar.item] run function custom:altar/recipe/_search