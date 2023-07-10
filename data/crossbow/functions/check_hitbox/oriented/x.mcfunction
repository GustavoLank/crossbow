scoreboard players operation #t1 crossbow = #cube_min_x crossbow
scoreboard players operation #t1 crossbow -= #originBoxSpaceX crossbow
scoreboard players operation #t1 crossbow /= #dirBoxSpaceX crossbow

scoreboard players operation #t2 crossbow = #cube_max_x crossbow
scoreboard players operation #t2 crossbow -= #originBoxSpaceX crossbow
scoreboard players operation #t2 crossbow /= #dirBoxSpaceX crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow < #t2 crossbow
scoreboard players operation #tmin crossbow > #temp crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow > #t2 crossbow
scoreboard players operation #tmax crossbow < #temp crossbow
