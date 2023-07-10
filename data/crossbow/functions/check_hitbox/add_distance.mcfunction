execute store result score #distance crossbow run data get storage crossbow:main closest_cube.distance
scoreboard players operation #total_distance crossbow += #distance crossbow
execute if score #total_distance crossbow >= #max_distance crossbow run function crossbow:check_hitbox/get_max_distance_point
