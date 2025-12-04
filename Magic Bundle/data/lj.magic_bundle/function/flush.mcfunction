item replace entity 264f26dd-0031-7462-30e0-8de467924832 weapon.mainhand from entity @s player.cursor
data modify storage lj.magic_bundle:cache id set from entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:custom_data"."lj.magic_bundle:data".id
function lj.magic_bundle:flush.1 with storage lj.magic_bundle:cache
data modify entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:custom_data"."lj.magic_bundle:data".pure set value false
data remove entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:lore".[{translate:"lj.magic_bundle.lore.more"}]
item replace entity @s player.cursor from entity 264f26dd-0031-7462-30e0-8de467924832 weapon.mainhand
playsound minecraft:block.end_portal_frame.fill player @s