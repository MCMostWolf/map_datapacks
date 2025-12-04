rotate @s ~5 ~
execute on vehicle if entity @s[tag=invisible] run return fail
#particle minecraft:falling_obsidian_tear ^ ^-1.8 ^-2.3 0 0 0 0 0 normal
#particle minecraft:falling_obsidian_tear ^ ^-2.3 ^-2.3 0 0 0 0 0 normal
particle minecraft:squid_ink ^ ^-1.8 ^-2 0 0 0 0 0 normal
execute on vehicle if entity @s[tag=!phase2] run return fail
rotate @s ~12 ~
particle minecraft:dust_color_transition{from_color:10617087,scale:1.2,to_color:2424876} ^ ^-1.8 ^-2 0 0 0 0 0 normal