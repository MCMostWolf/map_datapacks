##玩家uid快捷storage编辑\
    用于对玩家uid分数对应的storage进行编辑\
        例:uid为1的玩家执行[function tool/quick_cmd/player/_uid_modify {cmd1:"data modify",cmd2:"debug.menu set value 1"}]\
        等同于执行-data modify storage player player.data_1.debug.menu set value 1
        #画重点      |------------|                                                          |--------------------------|
#uid
execute store result storage temp uid int 1 run scoreboard players get @s uid
#宏
$data modify storage temp cmd1 set value '$(cmd1)'
$data modify storage temp cmd2 set value '$(cmd2)'
#储存
function tool:quick_cmd/player/function/uid_modify with storage temp