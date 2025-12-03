$data modify storage minecraft:player Slot set value $(Select)
#检测
$execute unless data storage minecraft:player {Slot:"off"} if items entity @s weapon.mainhand *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:luck",slot:"mainhand",amount:{min:$(unique_min)d,max:$(unique_max)d}}]}}] run return 1
$execute if data storage minecraft:player {Slot:"off"} if items entity @s weapon.offhand *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:luck",slot:"mainhand",amount:{min:$(unique_min)d,max:$(unique_max)d}}]}}] run return 1
return fail