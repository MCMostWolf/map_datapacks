#通用
scoreboard objectives add uid dummy {"text":"UID储存","color":"yellow"}
scoreboard objectives add temp dummy {"text":"缓存","color":"yellow"}
#血量&伤害
scoreboard objectives add death_count deathCount {"text":"死亡数","color":"blue"}
scoreboard objectives add health health {"text":"生命值","color":"blue"}

scoreboard objectives add damage dummy {"text":"伤害","color":"dark_green"}
scoreboard objectives add melee_dmg dummy {"text":"近战伤害","color":"dark_green"}
scoreboard objectives add remote_dmg dummy {"text":"远程伤害","color":"dark_green"}
scoreboard objectives add dmg_type dummy {"text":"伤害类型","color":"dark_green"}
scoreboard objectives add hp dummy {"text":"血量","color":"dark_red"}
scoreboard objectives add max_hp dummy {"text":"血量上限","color":"red"}

scoreboard objectives add dmg_dealt minecraft.custom:damage_dealt_absorbed {"text":"造成伤害(被吸收)","color":"red"}
scoreboard objectives add dmg_dealt minecraft.custom:damage_dealt_resisted {"text":"造成伤害(被抵挡)","color":"red"}
scoreboard objectives add dmg_dealt minecraft.custom:damage_dealt {"text":"造成伤害","color":"red"}
scoreboard objectives add dmg_taken minecraft.custom:damage_resisted {"text":"受到伤害(被抵挡)","color":"red"}
#机制
scoreboard objectives add invul dummy {"text":"无敌时间","color":"yellow"}
scoreboard objectives add bossbar_time dummy {"text":"信息栏显示时间","color":"yellow"}
#事件
scoreboard objectives add death deathCount {"text":"受到伤害(被抵挡)","color":"red"}
#游戏规则
scoreboard objectives add gamerule dummy {"text":"游戏规则","color":"yellow"}
scoreboard objectives add gamerule_setting trigger {"text":"游戏规则设置","color":"yellow"}
#初始化
execute unless score #uid uid matches -2147483648.. run scoreboard players set #uid uid -2147483648