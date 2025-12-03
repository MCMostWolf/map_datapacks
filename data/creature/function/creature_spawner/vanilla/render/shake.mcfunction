execute store result entity @s transformation.translation.[0] float 0.001 run random value -300..300
execute store result entity @s transformation.translation.[1] float 0.001 run random value -300..300
execute store result entity @s transformation.translation.[2] float 0.001 run random value -300..300
data merge entity @s {start_interpolation:0,interpolation_duration:1}
#particle 