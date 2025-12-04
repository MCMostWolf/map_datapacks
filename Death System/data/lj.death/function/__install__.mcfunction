scoreboard objectives add lj.death.V.death_ind deathCount
scoreboard objectives add lj.death.V.death_pile_uid dummy
scoreboard objectives add lj.death.V.player_ub dummy
scoreboard objectives add lj.death.V.player_lb dummy
scoreboard objectives add lj.death.TRIGGER trigger
scoreboard players set $lj.death.V.death_pile_uid_ub lj.INT 0
data modify storage lj.death:backup corpse_list set value []
gamerule keepInventory true
# e52dedab-665d-182b-545b-c899254849a0
summon minecraft:armor_stand -1000000 0 -1000000 {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,UUID:[I;-449974869, 1717377067, 1415301273, 625494432]}
# b9cad64d-fef9-0d07-2ec0-6bc1836b076a
summon minecraft:text_display -1000000 0 -1000000 {text:"",UUID:[I;-1177889203, -17232633, 784362433, -2090137750]}