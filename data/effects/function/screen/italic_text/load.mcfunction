item replace entity @s armor.head with acacia_boat[item_model=air,minecraft:enchantments={"effects:screen/italic_text":1}]
$scoreboard players set @s effects_time $(time)
data modify entity @s data.effects_id set from storage minecraft:effects timer
scoreboard players operation @s effects_time_kill = @s effects_time
scoreboard players add @s effects_time_kill 5
execute on passengers if entity @s[type=text_display] run function effects:screen/italic_text/ride
scoreboard players reset @s effects
tag @s remove effects.load