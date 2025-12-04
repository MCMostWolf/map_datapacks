execute unless entity @s[type=#lj.bomb:bomb,nbt={Item:{components:{"minecraft:custom_data":{"lj.bomb:data":{}}}}}] run return 0
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"lj.bomb:data":{fire:false}}}}} run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Invulnerable:true,Tags:["lj.bomb.T.bomb","lj.bomb.T.bomb.tmp"]}
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"lj.bomb:data":{fire:true}}}}} run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Invulnerable:true,Tags:["lj.bomb.T.bomb","lj.bomb.T.bomb.tmp","lj.bomb.T.fire_bomb"]}
ride @n[type=armor_stand,distance=..16,tag=lj.bomb.T.bomb.tmp] mount @s
tag @n[type=armor_stand,distance=..16,tag=lj.bomb.T.bomb.tmp] remove lj.bomb.T.bomb.tmp