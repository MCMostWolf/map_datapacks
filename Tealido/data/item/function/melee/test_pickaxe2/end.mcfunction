#检测是否为原物品
say 6
execute unless function condition:player_stats/item/_origin_using run return run tag @s add return_fail
#释放技能
playsound entity.generic.explode ambient @a ~ ~ ~ 1000 0
say 5