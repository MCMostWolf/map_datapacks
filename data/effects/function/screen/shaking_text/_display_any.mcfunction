$data modify storage minecraft:effects text set value '$(text)'
data modify storage minecraft:effects translation set value [6.7f,-2.5f,-4f]
$data modify storage minecraft:effects scale set value $(scale)
execute store result storage minecraft:effects translation.[1] float 0.01 run random value -350..350
execute store result storage minecraft:effects translation.[0] float 0.01 run random value -500..500
function effects:screen/shaking_text/_spawn with storage minecraft:effects
execute unless score #screen_text effects matches 2.. run return fail
scoreboard players remove #screen_text effects 1
$function effects:screen/shaking_text/_display_any {text:'$(text)',scale:$(scale)}