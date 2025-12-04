execute positioned ~ -1000 ~ if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{y:{min:940}}}} run return 0
execute store result score $lj.void_prot.take lj.INT run clear @s totem_of_undying 1
execute if score $lj.void_prot.take lj.INT matches 0 run return 0
function lj.void_prot:tp_back with storage lj.void_prot:spawn