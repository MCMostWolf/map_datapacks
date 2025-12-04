execute if entity @s[tag=!phase2] on passengers run item replace entity @s contents with \
minecraft:ender_pearl[minecraft:enchantment_glint_override=1b]
attribute @s minecraft:scale modifier remove minecraft:skill
playsound minecraft:block.ender_chest.open hostile @a ~ ~ ~ 1 1.6
execute on passengers run data modify entity @s transformation.scale set value [1.5,1.5,1.5]
execute on passengers run data modify entity @s transformation.translation set value [0,-2,-2.3]
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.2
execute if entity @s[tag=!phase2] run return fail

function tool:quick_cmd/game/spread {num:7,min:3,max:8,float:5}
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn