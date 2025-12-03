$bossbar add minecraft:text_bar_$(uid) "None"
$bossbar set minecraft:text_bar_$(uid) value 0
$bossbar set minecraft:text_bar_$(uid) color purple
tag @s add bossbar_hide
scoreboard players set @s bossbar_time 0