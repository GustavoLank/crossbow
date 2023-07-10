execute store result score #t crossbow run data get storage crossbow:main closest_cube.distance

scoreboard players operation #intersection_x crossbow = #t crossbow
scoreboard players operation #intersection_x crossbow *= #dx crossbow
scoreboard players operation #intersection_x crossbow += #ray_origin_x crossbow

scoreboard players operation #intersection_y crossbow = #t crossbow
scoreboard players operation #intersection_y crossbow *= #dy crossbow
scoreboard players operation #intersection_y crossbow += #ray_origin_y crossbow

scoreboard players operation #intersection_z crossbow = #t crossbow
scoreboard players operation #intersection_z crossbow *= #dz crossbow
scoreboard players operation #intersection_z crossbow += #ray_origin_z crossbow

scoreboard players operation #intersection_x crossbow /= #1000 crossbow
scoreboard players operation #intersection_y crossbow /= #1000 crossbow
scoreboard players operation #intersection_z crossbow /= #1000 crossbow

scoreboard players reset #t crossbow
