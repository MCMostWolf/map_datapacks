tag @e remove lj.core.T.Registered
recipe take @a *
advancement revoke @a everything
scoreboard objectives add lj.INT dummy
scoreboard players set $lj.core.V.clock lj.INT 0
forceload add -1000000 -1000000
function #lj.core:install