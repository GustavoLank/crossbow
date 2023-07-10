# Get the current shape minimum and maximum positions
execute store result score #cube_min_x crossbow run data get storage crossbow:main shape[-1][0]
execute store result score #cube_min_y crossbow run data get storage crossbow:main shape[-1][1]
execute store result score #cube_min_z crossbow run data get storage crossbow:main shape[-1][2]
execute store result score #cube_max_x crossbow run data get storage crossbow:main shape[-1][3]
execute store result score #cube_max_y crossbow run data get storage crossbow:main shape[-1][4]
execute store result score #cube_max_z crossbow run data get storage crossbow:main shape[-1][5]
scoreboard players operation #cube_min_x crossbow += #shape_offset_x crossbow
scoreboard players operation #cube_min_z crossbow += #shape_offset_z crossbow
scoreboard players operation #cube_max_x crossbow += #shape_offset_x crossbow
scoreboard players operation #cube_max_z crossbow += #shape_offset_z crossbow

scoreboard players set #result crossbow -1
scoreboard players set #tmin crossbow -2147483648
scoreboard players set #tmax crossbow 2147483647

execute unless score #dx crossbow matches 0 run function crossbow:check_hitbox/x
execute if score #dx crossbow matches 0 if score #ray_origin_x crossbow < #cube_min_x crossbow run scoreboard players set #result crossbow 0
execute if score #dx crossbow matches 0 if score #ray_origin_x crossbow > #cube_max_x crossbow run scoreboard players set #result crossbow 0

execute unless score #dy crossbow matches 0 run function crossbow:check_hitbox/y
execute if score #dy crossbow matches 0 if score #ray_origin_y crossbow < #cube_min_y crossbow run scoreboard players set #result crossbow 0
execute if score #dy crossbow matches 0 if score #ray_origin_y crossbow > #cube_max_y crossbow run scoreboard players set #result crossbow 0

execute unless score #dz crossbow matches 0 run function crossbow:check_hitbox/z
execute if score #dz crossbow matches 0 if score #ray_origin_z crossbow < #cube_min_z crossbow run scoreboard players set #result crossbow 0
execute if score #dz crossbow matches 0 if score #ray_origin_z crossbow > #cube_max_z crossbow run scoreboard players set #result crossbow 0

# If the ray intersects the shape, get the distance and
# update the `crossbow:main closest_cube` storage if needed
execute if score #result crossbow matches -1 if score #tmax crossbow >= #tmin crossbow if score #tmax crossbow matches 0.. run function crossbow:check_hitbox/cube_intersected

data remove storage crossbow:main shape[-1]
execute if data storage crossbow:main shape[-1] run function crossbow:check_hitbox/loop
