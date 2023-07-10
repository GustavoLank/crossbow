# Reset scores/storages
scoreboard players set #x crossbow 0
scoreboard players set #y crossbow 0
scoreboard players set #z crossbow 0
execute if score #max_blocks crossbow = #max_blocks crossbow run scoreboard players operation #blocks crossbow = #max_blocks crossbow
execute unless score #max_blocks crossbow = #max_blocks crossbow run scoreboard players set #blocks crossbow 128
scoreboard players set #intersected crossbow 0
scoreboard players set #block_offset_x crossbow 0
scoreboard players set #block_offset_y crossbow 0
scoreboard players set #block_offset_z crossbow 0
scoreboard players set #total_distance crossbow 0
scoreboard players set #stop crossbow 0
scoreboard players set #tp_when_finished crossbow 1
data modify storage crossbow:main closest_cube set value {}

# Get position and rotation values
execute summon marker run function crossbow:get_values/main

# Start the loop
execute align xyz run function crossbow:raycast/loop
