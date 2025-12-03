#
function item:player
#区域
function area:player
#发光
execute if score #glowing gamerule matches 1 unless score #unglowing gamerule matches 1 run effect give @s minecraft:glowing 1 9 true
#坐下
execute if score @s sneak_time matches 8..11 if block ~ ~ ~ #minecraft:chairs align xyz positioned ~0.5 ~0.5 ~0.5 run function player:sit
execute as @e[type=minecraft:item_display,tag=chair] unless function condition:entity_stats/has_passengers run kill @s
#BOSSBAR
execute as @a[tag=!bossbar_visible,tag=!bossbar_hide] run function player:bossbar/load
scoreboard players remove @s[scores={bossbar_time=1..}] bossbar_time 1
execute if score @s[tag=bossbar_visible] bossbar_time matches 0 run function player:bossbar/pre_hide
execute if score @s[tag=bossbar_hide] bossbar_time matches 1.. run function player:bossbar/pre_visible
#use
scoreboard players remove @s[scores={clickcd=1..}] clickcd 1
scoreboard players remove @s[scores={offclickcd=1..}] offclickcd 1
execute as @s[scores={use=1..}] run function item:use/_remove
#TEST
execute unless entity @s[tag=pre_fix_hand_f] run return fail
tag @s remove pre_fix_hand_f
function tool:quick_cmd/player/_fix_hand_f