$execute unless data storage lj.magic_bundle:storage $(id).[0] run return run data modify entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:custom_data"."lj.magic_bundle:data".pure set value true
$execute if data entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:bundle_contents".[11] run return run function lj.magic_bundle:set_lore_more {id:$(id)}
$data modify entity 264f26dd-0031-7462-30e0-8de467924832 equipment.mainhand.components."minecraft:bundle_contents" append from storage lj.magic_bundle:storage $(id).[-1]
$data remove storage lj.magic_bundle:storage $(id).[-1]
function lj.magic_bundle:load.1 with storage lj.magic_bundle:cache