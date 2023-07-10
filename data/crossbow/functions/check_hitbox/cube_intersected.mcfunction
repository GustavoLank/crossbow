# This function does not check for the `#max_distance` score.
# That will be done in `crossbow:check_hitbox/add_distance`,
# which might set the `intersected` score to 0 again if the
# ray's length was too short

scoreboard players set #stop crossbow 1
scoreboard players set #intersected crossbow 2
scoreboard players operation #t crossbow = #tmin crossbow
execute if score #t crossbow matches ..-1 run scoreboard players operation #t crossbow = #tmax crossbow
execute if score #t crossbow < #min_distance crossbow run data modify storage crossbow:main closest_cube.shape set from storage crossbow:main shape[-1]
execute if score #t crossbow < #min_distance crossbow store result storage crossbow:main closest_cube.distance int 1 run scoreboard players get #t crossbow
scoreboard players operation #min_distance crossbow < #t crossbow
