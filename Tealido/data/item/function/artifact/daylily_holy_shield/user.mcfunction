execute positioned as @p[distance=0..,tag=atf_user] run tp ~ ~0.9 ~
effect clear @p[distance=0..,tag=atf_user] minecraft:absorption
effect give @p[distance=0..,tag=atf_user] minecraft:absorption 1 0 true

execute if score @s artifact_cd matches 199.. run effect clear @p[distance=0..,tag=atf_user] minecraft:absorption