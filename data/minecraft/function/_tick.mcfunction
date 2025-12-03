#初始化
execute as @a[tag=!loaded] run function minecraft:default/_default
#Tick
function tool:_tick
function core:_tick
function item:_tick
function effects:_tick
function condition:_tick
function creature:_tick
function custom:_tick