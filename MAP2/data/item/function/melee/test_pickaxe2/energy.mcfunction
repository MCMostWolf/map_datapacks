#计数
scoreboard players add @s energy 1
scoreboard players set @s skill 2
#反馈
execute if score @s energy matches 1 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 1
execute if score @s energy matches 1 run say 2
execute if score @s energy matches ..2 run return run title @s actionbar {"text":"T A L L I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}
execute if score @s energy matches 3..5 run return run title @s actionbar [{"text":"T ","font":"minecraft:illageralt","color":"green"},{"text":"A L L I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 6..8 run return run title @s actionbar [{"text":"T A ","font":"minecraft:illageralt","color":"green"},{"text":"L L I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 10 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 1.2
execute if score @s energy matches 10 run say 2
execute if score @s energy matches 9..11 run return run title @s actionbar [{"text":"T A L ","font":"minecraft:illageralt","color":"green"},{"text":"L I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 12..14 run return run title @s actionbar [{"text":"T A L L ","font":"minecraft:illageralt","color":"green"},{"text":"I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 15..17 run return run title @s actionbar [{"text":"T A L L I ","font":"minecraft:illageralt","color":"green"},{"text":"R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 20 run say 2
execute if score @s energy matches 20 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 1.4
execute if score @s energy matches 18..20 run return run title @s actionbar [{"text":"T A L L I R ","font":"minecraft:illageralt","color":"green"},{"text":"A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 21..23 run return run title @s actionbar [{"text":"T A L L I R A ","font":"minecraft:illageralt","color":"green"},{"text":"L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 24..26 run return run title @s actionbar [{"text":"T A L L I R A L ","font":"minecraft:illageralt","color":"green"},{"text":"O O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 27..29 run return run title @s actionbar [{"text":"T A L L I R A L O ","font":"minecraft:illageralt","color":"green"},{"text":"O T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 30 run say 2
execute if score @s energy matches 30 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 1.6
execute if score @s energy matches 30..32 run return run title @s actionbar [{"text":"T A L L I R A L O O ","font":"minecraft:illageralt","color":"green"},{"text":"T L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 33..35 run return run title @s actionbar [{"text":"T A L L I R A L O O T ","font":"minecraft:illageralt","color":"green"},{"text":"L U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 36..38 run return run title @s actionbar [{"text":"T A L L I R A L O O T L ","font":"minecraft:illageralt","color":"green"},{"text":"U F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 40 run say 2
execute if score @s energy matches 40 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 1.8
execute if score @s energy matches 39..41 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U ","font":"minecraft:illageralt","color":"green"},{"text":"F A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 42..44 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F ","font":"minecraft:illageralt","color":"green"},{"text":"A R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 45..47 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F A ","font":"minecraft:illageralt","color":"green"},{"text":"R A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 50 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 0.6 2
execute if score @s energy matches 50 run say 2
execute if score @s energy matches 48..50 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F A R ","font":"minecraft:illageralt","color":"green"},{"text":"A L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 51..53 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F A R A ","font":"minecraft:illageralt","color":"green"},{"text":"L I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 54..56 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F A R A L ","font":"minecraft:illageralt","color":"green"},{"text":"I H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 57..59 run return run title @s actionbar [{"text":"T A L L I R A L O O T L U F A R A L I ","font":"minecraft:illageralt","color":"green"},{"text":"H","font":"minecraft:illageralt","color":"dark_gray"}]
execute if score @s energy matches 60 run playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 1 0
execute if score @s energy matches 60 run say 2
execute if score @s energy matches 60.. run return run title @s actionbar {"text":"T A L L I R A L O O T L U F A R A L I H","font":"minecraft:illageralt","color":"green"}