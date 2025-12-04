$item replace entity 264f26dd-0031-7462-30e0-8de467924832 weapon.mainhand from entity @s $(slot)
data remove entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:lore".[{translate:"lj.magic_bundle.lore.more"}]
data modify storage lj.magic_bundle:cache id set from entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:custom_data"."lj.magic_bundle:data".id
function lj.magic_bundle:load.1 with storage lj.magic_bundle:cache
$item replace entity @s $(slot) from entity 264f26dd-0031-7462-30e0-8de467924832 weapon.mainhand
playsound minecraft:item.bundle.drop_contents player @s