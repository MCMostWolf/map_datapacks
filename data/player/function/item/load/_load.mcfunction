item modify entity @s weapon.mainhand {function:"minecraft:set_custom_data",tag:{"tag":[{"tag":Mystic01}]}}
execute as @e[type=minecraft:arrow] at @s if data entity @s weapon.components."minecraft:custom_data"."tag".[{"tag":"Mystic01"}] run particle minecraft:landing_obsidian_tear ~ ~ ~ 0 1 0 1 0 force
particle minecraft:falling_dust{block_state:"gold_block"} ~ ~ ~ 0 0 0 0 0 force
particle minecraft:mycelium ~ ~ ~ 0.1 0.1 0.1 0 5 force
give @p minecraft:iron_chestplate[minecraft:item_model="shulker_spawn_egg",attribute_modifiers=[{id:"minecraft:movement_speed",type:"minecraft:movement_speed",slot:"armor",operation:"add_multiplied_total",amount:-0.15},{id:"minecraft:base_armor_toughness",type:"minecraft:armor_toughness",slot:"armor",operation:"add_value",amount:2},{id:"minecraft:base_armor",type:"armor",slot:"armor",operation:"add_value",amount:8},{id:"minecraft:base_knockback_resistance",type:"minecraft:knockback_resistance",slot:"armor",operation:"add_multiplied_total",amount:1},{id:"minecraft:attack_speed",type:"minecraft:attack_speed",slot:"armor",operation:"add_multiplied_total",amount:-0.3}],minecraft:enchantments={"minecraft:mending":1},minecraft:equippable={slot:"chest","asset_id":"minecraft:leather",equip_sound:"entity.shulker.ambient"},minecraft:trim={material:"minecraft:quartz","pattern":"minecraft:eye"},minecraft:dyed_color=10585279,minecraft:item_name={"text":"Shell of Shulker","color":"#a98fbf","shadow_color":2056744898},minecraft:tooltip_display={hidden_components:["minecraft:dyed_color","minecraft:trim"]}]
give @p minecraft:iron_chestplate[minecraft:item_model="phantom_spawn_egg",attribute_modifiers=[{id:"minecraft:base_armor",type:"armor",slot:"armor",operation:"add_value",amount:6},{id:"minecraft:base_gravity",type:"gravity",slot:"armor",operation:"add_value",amount:-0.03},{id:"minecraft:base_safe_fall_distance",type:"minecraft:safe_fall_distance",slot:"armor",operation:"add_value",amount:5}],minecraft:enchantments={"minecraft:mending":1},minecraft:equippable={slot:"chest","asset_id":"minecraft:leather",equip_sound:"entity.phantom.hurt"},minecraft:trim={material:"minecraft:quartz","pattern":"minecraft:rib"},minecraft:dyed_color=7632080,minecraft:item_name={"text":"Skin of Phantom","color":"#bac5ff","shadow_color":-1651338497},minecraft:tooltip_display={hidden_components:["minecraft:dyed_color","minecraft:trim"]}]

give @p minecraft:iron_chestplate[minecraft:item_model="guardian_spawn_egg",\
attribute_modifiers=[{id:"minecraft:base_armor",type:"armor",slot:"armor",operation:"add_value",amount:5},\
{id:"minecraft:base_luck",type:"minecraft:luck",slot:"armor",operation:"add_multiplied_total",amount:1},\
{id:"minecraft:base_water_movement_efficiency",type:"minecraft:water_movement_efficiency",slot:"armor",operation:"add_multiplied_total",amount:1.5}],\
minecraft:enchantments={"minecraft:mending":1,"minecraft:thorns":5},\
minecraft:equippable={slot:"chest","asset_id":"minecraft:leather",equip_sound:"minecraft:entity.guardian.ambient_land"},\
minecraft:trim={material:"minecraft:resin","pattern":"rib"},\
minecraft:dyed_color=7713932,\
minecraft:item_name={"text":"Skin of Guardian","color":"#80c49c","shadow_color":-1285119876},\
minecraft:tooltip_display={hidden_components:["minecraft:dyed_color","minecraft:trim"]}]


