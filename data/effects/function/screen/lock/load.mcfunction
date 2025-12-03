item replace entity @s armor.chest with minecraft:acacia_boat[minecraft:enchantments={"effects:screen/lock":1},\
minecraft:equippable={slot:"chest","equip_sound":{sound_id:""},asset_id:"none"}]
rotate @s ~ ~
$scoreboard players set @s effects $(time)
tag @s remove effects.load