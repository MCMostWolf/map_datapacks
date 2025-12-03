function item:prop/shulker_box/_tick
execute as @s[scores={artifact_cd=1}] at @s run function item:artifact/cd_end
scoreboard players remove @s[scores={artifact_cd=1..}] artifact_cd 1