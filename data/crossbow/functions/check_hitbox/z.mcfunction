scoreboard players operation #t1 crossbow = #cube_min_z crossbow
scoreboard players operation #t1 crossbow -= #ray_origin_z crossbow
scoreboard players operation #t1 crossbow /= #dz crossbow

scoreboard players operation #t2 crossbow = #cube_max_z crossbow
scoreboard players operation #t2 crossbow -= #ray_origin_z crossbow
scoreboard players operation #t2 crossbow /= #dz crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow < #t2 crossbow
scoreboard players operation #tmin crossbow > #temp crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow > #t2 crossbow
scoreboard players operation #tmax crossbow < #temp crossbow
