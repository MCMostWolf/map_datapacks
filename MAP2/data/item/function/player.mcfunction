#
execute if entity @s[tag=infinity.mainhand_use] run function item:infinity/pre_mainhand
execute if entity @s[tag=infinity.offhand_use] run function item:infinity/pre_offhand


#
function item:prop/shulker_box/_tick
execute as @s[scores={artifact_cd=1}] at @s run function item:artifact/cd_end
scoreboard players remove @s[scores={artifact_cd=1..}] artifact_cd 1