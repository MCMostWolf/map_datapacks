$data modify storage minecraft:effects text set value '$(text)'
$data modify storage minecraft:effects scale set value $(scale)
$data modify storage minecraft:effects scale set value $(time)
data modify storage minecraft:effects translation set value [6.7f,-2.5f,-200f]
execute store result storage minecraft:effects translation.[1] float 0.1 run random value -2000..2000
execute store result storage minecraft:effects translation.[0] float 0.1 run random value -3000..3000
function effects:screen/text/_spawn with storage minecraft:effects
execute unless score #screen_text effects matches 2.. run return fail
scoreboard players remove #screen_text effects 1
$function effects:screen/text/_display_any {text:'$(text)',scale:$(scale),time:$(time)}