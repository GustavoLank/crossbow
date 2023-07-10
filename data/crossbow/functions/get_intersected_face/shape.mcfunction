scoreboard players set #d crossbow 2147483647
scoreboard players set #intersected_face crossbow -1

execute store result score #min crossbow run data get storage crossbow:main closest_cube.shape[0]
execute store result score #max crossbow run data get storage crossbow:main closest_cube.shape[3]
scoreboard players operation #min crossbow += #shape_offset_x crossbow
scoreboard players operation #max crossbow += #shape_offset_x crossbow
scoreboard players operation #min crossbow /= #1000 crossbow
scoreboard players operation #max crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #intersection_x crossbow
scoreboard players operation #temp crossbow -= #min crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 0
scoreboard players operation #d crossbow < #temp crossbow
scoreboard players operation #temp crossbow = #intersection_x crossbow
scoreboard players operation #temp crossbow -= #max crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 1
scoreboard players operation #d crossbow < #temp crossbow

execute store result score #min crossbow run data get storage crossbow:main closest_cube.shape[1]
execute store result score #max crossbow run data get storage crossbow:main closest_cube.shape[4]
scoreboard players operation #min crossbow /= #1000 crossbow
scoreboard players operation #max crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #intersection_y crossbow
scoreboard players operation #temp crossbow -= #min crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 2
scoreboard players operation #d crossbow < #temp crossbow
scoreboard players operation #temp crossbow = #intersection_y crossbow
scoreboard players operation #temp crossbow -= #max crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 3
scoreboard players operation #d crossbow < #temp crossbow

execute store result score #min crossbow run data get storage crossbow:main closest_cube.shape[2]
execute store result score #max crossbow run data get storage crossbow:main closest_cube.shape[5]
scoreboard players operation #min crossbow += #shape_offset_z crossbow
scoreboard players operation #max crossbow += #shape_offset_z crossbow
scoreboard players operation #min crossbow /= #1000 crossbow
scoreboard players operation #max crossbow /= #1000 crossbow
scoreboard players operation #temp crossbow = #intersection_z crossbow
scoreboard players operation #temp crossbow -= #min crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 4
scoreboard players operation #d crossbow < #temp crossbow
scoreboard players operation #temp crossbow = #intersection_z crossbow
scoreboard players operation #temp crossbow -= #max crossbow
execute if score #temp crossbow matches ..-1 run scoreboard players operation #temp crossbow *= #-1 crossbow
execute if score #temp crossbow < #d crossbow run scoreboard players set #intersected_face crossbow 5
scoreboard players operation #d crossbow < #temp crossbow
