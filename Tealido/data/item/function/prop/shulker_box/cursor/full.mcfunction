data modify storage minecraft:item drop set from entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle".[0]
data remove entity 154cd72d-154c-d72d-eab3-28d3eab328d3 item.components."minecraft:custom_data"."shulker_bundle".[0]
function item:drop with storage minecraft:item drop
scoreboard players remove #temp temp 1
execute if score #temp temp matches 28.. run return run function item:prop/shulker_box/cursor/full
playsound minecraft:entity.shulker.hurt_closed player @a ~ ~ ~ 0.5 0.8
