advancement revoke @s only item:player/nightmare
#护甲
attribute @s minecraft:max_health modifier remove minecraft:head
attribute @s minecraft:max_health modifier remove minecraft:chest
attribute @s minecraft:max_health modifier remove minecraft:legs
attribute @s minecraft:max_health modifier remove minecraft:feet

attribute @s minecraft:attack_damage modifier remove minecraft:head
attribute @s minecraft:attack_damage modifier remove minecraft:chest
attribute @s minecraft:attack_damage modifier remove minecraft:legs
attribute @s minecraft:attack_damage modifier remove minecraft:feet

execute if items entity @s armor.head *[custom_data~{id:"darkness"}] run attribute @s minecraft:max_health modifier add minecraft:head 1 add_value
execute if items entity @s armor.chest *[custom_data~{id:"darkness"}] run attribute @s minecraft:max_health modifier add minecraft:chest 1 add_value
execute if items entity @s armor.legs *[custom_data~{id:"darkness"}] run attribute @s minecraft:max_health modifier add minecraft:legs 1 add_value
execute if items entity @s armor.feet *[custom_data~{id:"darkness"}] run attribute @s minecraft:max_health modifier add minecraft:feet 1 add_value

execute if items entity @s armor.head *[custom_data~{id:"nightmare"}] run attribute @s minecraft:attack_damage modifier add minecraft:head 0.75 add_value
execute if items entity @s armor.chest *[custom_data~{id:"nightmare"}] run attribute @s minecraft:attack_damage modifier add minecraft:chest 0.75 add_value
execute if items entity @s armor.legs *[custom_data~{id:"nightmare"}] run attribute @s minecraft:attack_damage modifier add minecraft:legs 0.75 add_value
execute if items entity @s armor.feet *[custom_data~{id:"nightmare"}] run attribute @s minecraft:attack_damage modifier add minecraft:feet 0.75 add_value