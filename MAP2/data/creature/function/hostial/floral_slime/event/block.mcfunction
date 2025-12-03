
#表现
execute if score @s skill_cnt2 matches 5.. run function creature:hostial/floral_slime/event/sheild_break
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 0.7
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 0.7
particle minecraft:item{item:"minecraft:shield"} ~ ~0.7 ~ 0.4 0.4 0.4 0.1 20 normal
#格挡成功/失败
execute if function creature:hostial/floral_slime/event/block_success run return run \
effect give @s minecraft:instant_damage 1 10 true
#
particle minecraft:explosion ~ ~1.4 ~ 1.4 0 0 1 0 normal
execute if items entity @s weapon.offhand minecraft:shield run function creature:hostial/floral_slime/event/sheild_break
effect give @s minecraft:strength infinite 1
playsound minecraft:event.mob_effect.raid_omen hostile @a ~ ~ ~ 0.8 1.1
particle minecraft:raid_omen ~ ~1.2 ~ 0.3 0.6 0.3 0.1 10 normal
execute rotated ~180 -10 run function tool:quick_cmd/entity/_motion {speed:0.6}
data modify entity @s Motion set from storage minecraft:tool Motion