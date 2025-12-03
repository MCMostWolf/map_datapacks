#末尾释放
execute if entity @s[tag=return_used] run return run function item:melee/test_pickaxe2/end
#初始点击
execute if entity @s[tag=!use] run function item:melee/test_pickaxe2/reset
#蓄力
function item:melee/test_pickaxe2/energy