tellraw @a [{"text":"[调试]：","color":"yellow","bold": true},{"text":" 已重载","color":"white","bold": false}]
#分数
function minecraft:scoreboard
#单独
function effects:_load
#加载区块
function minecraft:forceload
##Debug
item replace entity @a armor.body with minecraft:air
loot replace entity @a armor.body loot core:body/_creature
#
data modify storage minecraft:temp Pos set value [0,0,0]