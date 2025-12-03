$data modify storage minecraft:effects text set value '$(text)'
$data modify storage minecraft:effects scale set value $(scale)
data modify storage minecraft:effects translation set value [175f,-2.5f,-200f]
execute store result storage minecraft:effects translation.[1] float 0.1 run random value -1000..1000
function effects:screen/shaking_text/_spawn with storage minecraft:effects
execute unless score #screen_text effects matches 2.. run return fail
scoreboard players remove #screen_text effects 1
$function effects:screen/moving_text/_display_right {text:'$(text)',scale:$(scale)}