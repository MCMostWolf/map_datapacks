
execute if predicate condition:chance/chance20 run \
item replace entity @s weapon.offhand with minecraft:air

execute if predicate condition:chance/chance20 run return run \
item replace entity @s weapon.mainhand with minecraft:wooden_hoe[minecraft:custom_model_data={strings:[\
"creature.hostial.azalea_skeleton.mainhand"]}]

execute if predicate condition:chance/chance20 run return run \
item replace entity @s weapon.mainhand with minecraft:wooden_pickaxe[minecraft:custom_model_data={strings:[\
"creature.hostial.azalea_skeleton.mainhand"]}]

execute if predicate condition:chance/chance20 run return run \
item replace entity @s weapon.mainhand with minecraft:wooden_hoe[minecraft:custom_model_data={strings:[\
"creature.hostial.azalea_skeleton.mainhand"]}]

item replace entity @s weapon.mainhand with minecraft:air[minecraft:custom_model_data={strings:[\
"creature.hostial.azalea_skeleton.mainhand"]}]