scoreboard players operation #t1 crossbow = #cube_min_y crossbow
scoreboard players operation #t1 crossbow -= #originBoxSpaceY crossbow
scoreboard players operation #t1 crossbow /= #dirBoxSpaceY crossbow

scoreboard players operation #t2 crossbow = #cube_max_y crossbow
scoreboard players operation #t2 crossbow -= #originBoxSpaceY crossbow
scoreboard players operation #t2 crossbow /= #dirBoxSpaceY crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow < #t2 crossbow
scoreboard players operation #tmin crossbow > #temp crossbow

scoreboard players operation #temp crossbow = #t1 crossbow
scoreboard players operation #temp crossbow > #t2 crossbow
scoreboard players operation #tmax crossbow < #temp crossbow
