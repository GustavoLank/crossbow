# Reset offset for special blocks like bamboo
scoreboard players set #shape_offset_x crossbow 0
scoreboard players set #shape_offset_z crossbow 0

# Go through a tree to get the hitbox shapes
function crossbow:get_hitbox/main

# Set other values used in calculations
scoreboard players set #min_distance crossbow 2147483647
data modify storage crossbow:main closest_cube set value {distance: 2147483647}
scoreboard players operation #ray_origin_x crossbow = #x crossbow
scoreboard players operation #ray_origin_y crossbow = #y crossbow
scoreboard players operation #ray_origin_z crossbow = #z crossbow
scoreboard players operation #ray_origin_x crossbow *= #1000 crossbow
scoreboard players operation #ray_origin_y crossbow *= #1000 crossbow
scoreboard players operation #ray_origin_z crossbow *= #1000 crossbow

# Loop through the block's shapes
execute if score #is_oriented crossbow matches 0 run function crossbow:check_hitbox/loop
execute if score #is_oriented crossbow matches 1 run function crossbow:check_hitbox/oriented/loop

# If there was a hit, add to the total distance
execute if score #intersected crossbow matches 2..3 run function crossbow:check_hitbox/add_distance
