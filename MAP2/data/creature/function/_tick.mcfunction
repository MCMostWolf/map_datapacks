execute as @e[type=minecraft:item_display,tag=creature_spawner] at @s run function creature:creature_spawner/_tick
execute as @e[type=minecraft:marker,tag=creature_spawner_place] run function creature:creature_spawner/marker_place
execute as @e[type=minecraft:item_display,tag=render_display] unless function condition:entity_stats/has_vehicle run kill @s
execute unless score #wither gamerule matches 1 as @e[type=minecraft:wither,tag=!loaded] at @s run function creature:boss/nightmare_wither/_summon

return fail


#execute align xyz run summon minecraft:wither_skeleton ~0.5 ~0.5 ~0.5 {NoAI:1b,DeathLootTable:"blocks/wither_skeleton_skull",Silent:1b,Rotation:[90,75],PersistenceRequired:true}
#give @p minecraft:crossbow[minecraft:item_model="minecraft:ender_eye",minecraft:enchantments=\
{"minecraft:mending":1,"minecraft:multishot":1,"piercing":1,"minecraft:power":3,"minecraft:quick_charge":3},\
minecraft:item_name=[{"translate": "weapon.nightmare_eye.name","color":"#7ed6aa","shadow_color":-15245479}],\
minecraft:lore=[{"translate": "weapon.nightmare_eye.lore","color":"dark_gray",italic:false}]]

#summon minecraft:villager ~ ~6 ~ {"Invulnerable":1b,VillagerData:{level:999},"active_effects":[\
{id:"minecraft:slowness",duration:-1,amplifier:9,show_particles:false},{id:"minecraft:invisibility",duration:-1,amplifier:9,show_particles:false}],\
"attributes":[{base:1.15,id:"minecraft:scale"}],Tags:["nightmare_villager"],"Offers":{Recipes:[\
{buy:{id:"popped_chorus_fruit",count:16},sell:{id:"minecraft:arrow","count":24},maxUses:99999,xp:8},\
{buy:{id:"popped_chorus_fruit",count:16},sell:{id:"minecraft:tinted_glass","count":16},maxUses:99999,xp:8},\
{buy:{id:"popped_chorus_fruit",count:48},buyB:{id:"enchanted_book"},sell:{id:"minecraft:stone_sword","count":1,components:{\
"minecraft:custom_data":{"id": "nightmare_sword"},"minecraft:blocks_attacks":{"block_sound": {"sound_id": "minecraft:item.trident.hit_ground",\
"range": 1.2},"block_delay_seconds": 0.5},"enchantments":{ "minecraft:bane_of_arthropods": 3,"minecraft:smite": 3,\
"minecraft:thorns": 1,"minecraft:mending": 1,"minecraft:unbreaking": 3},"minecraft:item_name":[\
{"translate":"weapon.nightmare_sword.name","color": "#17002f","shadow_color": -9043746}],\
"minecraft:lore":[{"translate": "weapon.nightmare_sword.lore","color": "dark_gray",\
"italic": false},{"translate": "weapon.nightmare_sword.lore.1","color": "blue","italic": false}]}},maxUses:1,xp:480},\
{buy:{id:"popped_chorus_fruit",count:32},sell:{id:"minecraft:golden_apple","count":2},maxUses:99999,xp:8},\
{buy:{id:"popped_chorus_fruit",count:16},sell:{id:"minecraft:cooked_beef","count":16},maxUses:99999,xp:8}]},\
Silent:1b,NoAI:1b,CustomName:[{"text":"TrueGuy1233","color":"#acacd7",shadow_color:-11842683}]}

#summon minecraft:mannequin ~ ~4.5 ~ {immovable:1b,Invulnerable:1b,profile:{name:"TrueGuy1233"},hide_description:1b,Tags:["nightmare_villager"],CustomNameVisible:1b,CustomName:[{"text":"TrueGuy1233","color":"#acacd7",shadow_color:-11842683}]}