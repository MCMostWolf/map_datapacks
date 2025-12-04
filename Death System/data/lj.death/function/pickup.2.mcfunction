$execute unless data storage lj.death:cache corpse_pickup."$(slot)" run return 0
$execute if items entity @s $(slot) * run function lj.death:pickup.3 {slot:"$(slot)"}
data remove entity e52dedab-665d-182b-545b-c899254849a0 equipment
$data modify entity e52dedab-665d-182b-545b-c899254849a0 equipment.mainhand set from storage lj.death:cache corpse_pickup."$(slot)"
$item replace entity @s $(slot) from entity e52dedab-665d-182b-545b-c899254849a0 weapon.mainhand