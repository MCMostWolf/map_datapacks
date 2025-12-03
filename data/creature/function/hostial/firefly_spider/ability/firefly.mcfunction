#效果
particle minecraft:entity_effect{color:-4526} ~ ~0.3 ~ 0.5 0.4 0.5 0.05 15 normal
particle minecraft:dust_color_transition{from_color:16772695,scale:2,to_color:16775353} ~ ~0.3 ~ 0.5 0.4 0.5 0.05 5 normal
effect give @s minecraft:invisibility 1 1 false
playsound minecraft:entity.camel.eat hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 1.5 1.6
particle minecraft:flash ~ ~ ~ 0 0 0 0 0 normal
#冲刺
execute on target run tag @s add attack_traget
execute facing entity @n[distance=..10,tag=attack_traget] eyes run function tool:quick_cmd/entity/_motion {speed:1.5}
execute on target run tag @s remove attack_traget
data modify entity @s Motion set from storage tool Motion
#CD
scoreboard players set @s skill_cd 5