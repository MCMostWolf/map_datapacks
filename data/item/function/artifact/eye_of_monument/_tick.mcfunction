#粒子
execute on passengers on origin run tag @s add atf_user
function item:artifact/eye_of_monument/spin
#计时
scoreboard players add @s artifact_cd 1
execute if score @p[distance=..0.9,tag=atf_user] artifact_cd matches -357 run scoreboard players add @s artifact_cd 4
scoreboard players operation #temp temp = @s artifact_cd
scoreboard players operation #temp temp = #math20 math
scoreboard players operation #temp1 temp = @s artifact_cd
scoreboard players operation #temp1 temp /= #math10 math
#
execute if score @s artifact_cd matches 210 on passengers on origin \
run function item:artifact/eye_of_monument/tp
execute if score @s artifact_cd matches 210 \
run return run function item:artifact/eye_of_monument/clear
execute if score @p[distance=..0.9,tag=atf_user] artifact_cd matches -357 \
if predicate condition:tick/2t rotated 0 0 run \
function item:artifact/eye_of_monument/display
execute unless score @p[distance=..0.9,tag=atf_user] artifact_cd matches -357 \
if predicate condition:tick/10t rotated 0 0 run \
function item:artifact/eye_of_monument/display
#目标
execute unless entity @p[distance=..0.9,tag=atf_user] run \
function item:artifact/eye_of_monument/fail
execute on passengers on origin run tag @s remove atf_user
