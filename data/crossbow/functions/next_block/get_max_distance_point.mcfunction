scoreboard players set #stop crossbow 1
scoreboard players operation #distance crossbow = #max_distance crossbow
scoreboard players operation #distance crossbow -= #old_total_distance crossbow
scoreboard players operation #total_distance crossbow = #max_distance crossbow

scoreboard players operation #x crossbow = #old_x crossbow
scoreboard players operation #x crossbow *= #1000 crossbow
scoreboard players operation #temp crossbow = #distance crossbow
scoreboard players operation #temp crossbow *= #dx crossbow
scoreboard players operation #x crossbow += #temp crossbow
scoreboard players operation #x crossbow /= #1000 crossbow

scoreboard players operation #y crossbow = #old_y crossbow
scoreboard players operation #y crossbow *= #1000 crossbow
scoreboard players operation #temp crossbow = #distance crossbow
scoreboard players operation #temp crossbow *= #dy crossbow
scoreboard players operation #y crossbow += #temp crossbow
scoreboard players operation #y crossbow /= #1000 crossbow

scoreboard players operation #z crossbow = #old_z crossbow
scoreboard players operation #z crossbow *= #1000 crossbow
scoreboard players operation #temp crossbow = #distance crossbow
scoreboard players operation #temp crossbow *= #dz crossbow
scoreboard players operation #z crossbow += #temp crossbow
scoreboard players operation #z crossbow /= #1000 crossbow

scoreboard players operation #block_offset_x crossbow = #old_block_offset_x crossbow
scoreboard players operation #block_offset_y crossbow = #old_block_offset_y crossbow
scoreboard players operation #block_offset_z crossbow = #old_block_offset_z crossbow
