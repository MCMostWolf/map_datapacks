summon minecraft:area_effect_cloud ~ ~ ~ {data:{marker:1b},Tags:["tool.bonding","tool.bond_passengers"],Duration:-1,Radius:0,custom_particle:{type:"minecraft:block",block_state: "minecraft:air"}}
$data modify entity @n[type=minecraft:area_effect_cloud,distance=..0.01,tag=tool.bonding] Owner set from entity $(bond) UUID
$execute as $(ride) run function tool:quick_cmd/entity/function/bond