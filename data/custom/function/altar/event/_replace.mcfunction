#交互失败
execute on vehicle on passengers if entity @s[tag=altar.item,tag=!have_item] if function custom:altar/silent run return fail


#物品交换
execute on target run tag @s add skill_user
#单物品处理
execute on target run item replace entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents from entity @s weapon.mainhand
execute on target run item modify entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents [{function:"set_count",count:1,add:false}]
execute on target run item modify entity @s weapon.mainhand [{function:"set_count",count:-1,add:true}]
#物品返还
execute on vehicle on passengers if entity @s[tag=altar.item] run function custom:altar/event/drop
#物品加载
execute on vehicle on passengers if entity @s[tag=altar.item] run item replace entity @s contents from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 contents

execute on target run tag @s remove skill_user
#事件
execute on vehicle run function custom:altar/event/replace

#清除
execute on vehicle on passengers if entity @s[tag=altar.item] if entity @s[tag=!altar.crafting] run return fail
execute on vehicle run scoreboard players operation #temp uid = @s uid
playsound minecraft:block.conduit.deactivate block @a ~ ~ ~ 0.2 1.6
execute as @e[distance=..16,type=minecraft:item_display] if score @s uid = #temp uid on passengers if entity @s[tag=altar.item,tag=altar.crafting] at @s run function custom:altar/event/pause