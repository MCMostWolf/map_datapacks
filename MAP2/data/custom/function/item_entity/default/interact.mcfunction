#Debug清除
function custom:item_entity/default/debug
#交互
execute on target run tag @s add interact_traget
execute on vehicle at @p[tag=interact_traget] run function custom:item_entity/default/item_spawn
execute on target run tag @s remove interact_traget
#反馈
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 0.6 0.7
playsound minecraft:item.armor.equip_chain block @a ~ ~ ~ 0.6 1.2
#
execute on vehicle run function custom:item_entity/default/clear