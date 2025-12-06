$data modify storage minecraft:effects text set value '$(text)'
data modify storage minecraft:effects translation set value [0f,2.5f,0f]
$data modify storage minecraft:effects scale set value $(scale)
execute store result storage minecraft:effects translation.[1] float 0.01 run random value 25..75
function effects:screen/talking_text/_spawn with storage minecraft:effects
execute unless score #screen_text effects matches 2.. run return fail
scoreboard players remove #screen_text effects 1
$function effects:screen/talking_text/_display {text:'$(text)',scale:$(scale)}