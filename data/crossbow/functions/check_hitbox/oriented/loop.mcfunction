###########################################
# Transforms the ray to the shape's space #
###########################################

execute store result score #center_x crossbow run data get storage crossbow:main shape[-1].center[0]
execute store result score #center_y crossbow run data get storage crossbow:main shape[-1].center[1]
execute store result score #center_z crossbow run data get storage crossbow:main shape[-1].center[2]
execute store result score #extents_x crossbow run data get storage crossbow:main shape[-1].extents[0]
execute store result score #extents_y crossbow run data get storage crossbow:main shape[-1].extents[1]
execute store result score #extents_z crossbow run data get storage crossbow:main shape[-1].extents[2]
execute store result score #rotation_0_0 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[0][0]
execute store result score #rotation_0_1 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[0][1]
execute store result score #rotation_0_2 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[0][2]
execute store result score #rotation_1_0 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[1][0]
execute store result score #rotation_1_1 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[1][1]
execute store result score #rotation_1_2 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[1][2]
execute store result score #rotation_2_0 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[2][0]
execute store result score #rotation_2_1 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[2][1]
execute store result score #rotation_2_2 crossbow run data get storage crossbow:main shape[-1].rotation_matrix[2][2]


scoreboard players operation #originBoxSpaceX1 crossbow = #ray_origin_x crossbow
scoreboard players operation #originBoxSpaceX1 crossbow -= #center_x crossbow
scoreboard players operation #originBoxSpaceY1 crossbow = #ray_origin_y crossbow
scoreboard players operation #originBoxSpaceY1 crossbow -= #center_y crossbow
scoreboard players operation #originBoxSpaceZ1 crossbow = #ray_origin_z crossbow
scoreboard players operation #originBoxSpaceZ1 crossbow -= #center_z crossbow


scoreboard players operation #originBoxSpaceX crossbow = #originBoxSpaceX1 crossbow
scoreboard players operation #originBoxSpaceX crossbow /= #1000 crossbow
scoreboard players operation #originBoxSpaceX crossbow *= #rotation_0_0 crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceY1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_1_0 crossbow
scoreboard players operation #originBoxSpaceX crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceZ1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_2_0 crossbow
scoreboard players operation #originBoxSpaceX crossbow += #temp crossbow

scoreboard players operation #originBoxSpaceY crossbow = #originBoxSpaceX1 crossbow
scoreboard players operation #originBoxSpaceY crossbow /= #1000 crossbow
scoreboard players operation #originBoxSpaceY crossbow *= #rotation_0_1 crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceY1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_1_1 crossbow
scoreboard players operation #originBoxSpaceY crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceZ1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_2_1 crossbow
scoreboard players operation #originBoxSpaceY crossbow += #temp crossbow

scoreboard players operation #originBoxSpaceZ crossbow = #originBoxSpaceX1 crossbow
scoreboard players operation #originBoxSpaceZ crossbow /= #1000 crossbow
scoreboard players operation #originBoxSpaceZ crossbow *= #rotation_0_2 crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceY1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_1_2 crossbow
scoreboard players operation #originBoxSpaceZ crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #originBoxSpaceZ1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow *= #rotation_2_2 crossbow
scoreboard players operation #originBoxSpaceZ crossbow += #temp crossbow


scoreboard players operation #dirBoxSpaceX crossbow = #dx crossbow
scoreboard players operation #dirBoxSpaceX crossbow *= #rotation_0_0 crossbow
scoreboard players operation #dirBoxSpaceX crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #dy crossbow
scoreboard players operation #temp crossbow *= #rotation_1_0 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceX crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #dz crossbow
scoreboard players operation #temp crossbow *= #rotation_2_0 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceX crossbow += #temp crossbow

scoreboard players operation #dirBoxSpaceY crossbow = #dx crossbow
scoreboard players operation #dirBoxSpaceY crossbow *= #rotation_0_1 crossbow
scoreboard players operation #dirBoxSpaceY crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #dy crossbow
scoreboard players operation #temp crossbow *= #rotation_1_1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceY crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #dz crossbow
scoreboard players operation #temp crossbow *= #rotation_2_1 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceY crossbow += #temp crossbow

scoreboard players operation #dirBoxSpaceZ crossbow = #dx crossbow
scoreboard players operation #dirBoxSpaceZ crossbow *= #rotation_0_2 crossbow
scoreboard players operation #dirBoxSpaceZ crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #dy crossbow
scoreboard players operation #temp crossbow *= #rotation_1_2 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceZ crossbow += #temp crossbow
scoreboard players operation #temp crossbow = #dz crossbow
scoreboard players operation #temp crossbow *= #rotation_2_2 crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #dirBoxSpaceZ crossbow += #temp crossbow

scoreboard players set #cube_min_x crossbow 0
scoreboard players operation #cube_min_x crossbow -= #extents_x crossbow
scoreboard players operation #cube_max_x crossbow = #extents_x crossbow

scoreboard players set #cube_min_y crossbow 0
scoreboard players operation #cube_min_y crossbow -= #extents_y crossbow
scoreboard players operation #cube_max_y crossbow = #extents_y crossbow

scoreboard players set #cube_min_z crossbow 0
scoreboard players operation #cube_min_z crossbow -= #extents_z crossbow
scoreboard players operation #cube_max_z crossbow = #extents_z crossbow

###########################################


scoreboard players set #result crossbow -1
scoreboard players set #tmin crossbow -2147483648
scoreboard players set #tmax crossbow 2147483647

execute unless score #dirBoxSpaceX crossbow matches 0 run function crossbow:check_hitbox/oriented/x
execute if score #dirBoxSpaceX crossbow matches 0 if score #originBoxSpaceX crossbow < #cube_min_x crossbow run scoreboard players set #result crossbow 0
execute if score #dirBoxSpaceX crossbow matches 0 if score #originBoxSpaceX crossbow > #cube_max_x crossbow run scoreboard players set #result crossbow 0

execute unless score #dirBoxSpaceY crossbow matches 0 run function crossbow:check_hitbox/oriented/y
execute if score #dirBoxSpaceY crossbow matches 0 if score #originBoxSpaceY crossbow < #cube_min_y crossbow run scoreboard players set #result crossbow 0
execute if score #dirBoxSpaceY crossbow matches 0 if score #originBoxSpaceY crossbow > #cube_max_y crossbow run scoreboard players set #result crossbow 0

execute unless score #dirBoxSpaceZ crossbow matches 0 run function crossbow:check_hitbox/oriented/z
execute if score #dirBoxSpaceZ crossbow matches 0 if score #originBoxSpaceZ crossbow < #cube_min_z crossbow run scoreboard players set #result crossbow 0
execute if score #dirBoxSpaceZ crossbow matches 0 if score #originBoxSpaceZ crossbow > #cube_max_z crossbow run scoreboard players set #result crossbow 0

execute if score #result crossbow matches -1 if score #tmax crossbow >= #tmin crossbow if score #tmax crossbow matches 0.. run function crossbow:check_hitbox/oriented/cube_intersected

data remove storage crossbow:main shape[-1]
execute if data storage crossbow:main shape[-1] run function crossbow:check_hitbox/oriented/loop
