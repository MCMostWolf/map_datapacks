execute positioned ~-1.5 ~ ~-1.5 as @e[type=!minecraft:player,dx=2,dy=2,dz=2] at @s \
run particle minecraft:dust_color_transition{from_color:16711680,scale:2,to_color:7929856} ~ ~ ~ 0 0 0 1 2 force

particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~1.5 ~ ~ 0 0 0.5 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~-1.5 ~ ~ 0 0 0.5 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~1.5 ~3 ~ 0 0 0.5 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~-1.5 ~3 ~ 0 0 0.5 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~ ~ ~1.5 0.5 0 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~ ~ ~-1.5 0.5 0 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~ ~3 ~1.5 0.5 0 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~ ~3 ~-1.5 0.5 0 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~1.5 ~1.5 ~1.5 0 0.5 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~-1.5 ~1.5 ~1.5 0 0.5 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~1.5 ~1.5 ~-1.5 0 0.5 0 0 80 force
particle minecraft:dust_color_transition{from_color:16711680,scale:0.17,to_color:7929856} ~-1.5 ~1.5 ~-1.5 0 0.5 0 0 80 force

title @s actionbar [{"text":"--*- 按住潜行键时丢出屏障来清理实体 -*--","color":"dark_red",shadow_color:-10158080}]