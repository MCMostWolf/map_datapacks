$data modify storage lj.death:cache corpse_pickup set from storage lj.death:data players."$(UUID)".corpse.$(corpse_id)
$data remove storage lj.death:data players."$(UUID)".corpse.$(corpse_id)
$data remove storage lj.death:data players."$(UUID)".tp_data.$(corpse_id)