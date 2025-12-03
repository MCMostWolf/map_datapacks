execute unless items entity @s armor.chest * run return fail
item replace entity @s armor.chest with minecraft:air
playsound minecraft:entity.item.break hostile @a ~ ~ ~ 0.7 1.3
playsound minecraft:item.armor.equip_chain hostile @a ~ ~ ~ 1 1.4
particle minecraft:item{item:"minecraft:chainmail_chestplate"} ~ ~0.8 ~ 0.4 0.6 0.4 0.15 50 normal