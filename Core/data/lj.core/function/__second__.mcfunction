advancement revoke @a from lj.core:trigger_root
function #lj.core:second
execute as @a at @s run function #lj.core:second_a
execute as @e at @s run function #lj.core:second_e
schedule function lj.core:__second__ 1s

# MAYBE YOU WISH TO COMMENT THE FOLLOWING LINES

#execute as @a unless items entity @s saddle minecraft:saddle run item replace entity @s saddle with minecraft:saddle[minecraft:enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]

# END