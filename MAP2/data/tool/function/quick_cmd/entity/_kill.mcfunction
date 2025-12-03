function tool:quick_cmd/entity/function/passengers_kill
function tool:quick_cmd/entity/function/vehicle_kill
execute if score #temp temp matches 1 run function tool:quick_cmd/entity/function/uid_kill
kill @e[tag=pre_kill]