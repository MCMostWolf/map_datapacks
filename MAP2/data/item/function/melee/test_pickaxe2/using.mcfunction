#清除
advancement revoke @s only item:using/test_pickaxe2
#判定
execute if entity @s[tag=!use] run return fail
#频率
function item:melee/test_pickaxe2/_use