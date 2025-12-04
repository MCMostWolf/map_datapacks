$execute unless items entity @s $(slot) * run return 0
$item modify entity @s $(slot) lj.death:on_death
item replace entity e52dedab-665d-182b-545b-c899254849a0 weapon.mainhand with minecraft:air
$item replace entity e52dedab-665d-182b-545b-c899254849a0 weapon.mainhand from entity @s $(slot)
$item replace entity @s $(slot) with minecraft:air
$data modify storage lj.death:cache corpse_new."$(slot)" set from entity e52dedab-665d-182b-545b-c899254849a0 equipment.mainhand