scoreboard players set #dtx crossbow 1000000000
execute if score #dx crossbow matches ..-1 run scoreboard players set #dtx crossbow 0
scoreboard players operation #temp crossbow = #x crossbow
scoreboard players operation #temp crossbow *= #1000 crossbow
scoreboard players operation #dtx crossbow -= #temp crossbow
scoreboard players operation #dtx crossbow /= #dx crossbow


scoreboard players set #dty crossbow 1000000000
execute if score #dy crossbow matches ..-1 run scoreboard players set #dty crossbow 0
scoreboard players operation #temp crossbow = #y crossbow
scoreboard players operation #temp crossbow *= #1000 crossbow
scoreboard players operation #dty crossbow -= #temp crossbow
scoreboard players operation #dty crossbow /= #dy crossbow


scoreboard players set #dtz crossbow 1000000000
execute if score #dz crossbow matches ..-1 run scoreboard players set #dtz crossbow 0
scoreboard players operation #temp crossbow = #z crossbow
scoreboard players operation #temp crossbow *= #1000 crossbow
scoreboard players operation #dtz crossbow -= #temp crossbow
scoreboard players operation #dtz crossbow /= #dz crossbow

execute if score #dtx crossbow <= #dty crossbow if score #dtx crossbow <= #dtz crossbow run scoreboard players set #axis crossbow 0
execute if score #dty crossbow <= #dtx crossbow if score #dty crossbow <= #dtz crossbow run scoreboard players set #axis crossbow 1
execute if score #dtz crossbow <= #dtx crossbow if score #dtz crossbow <= #dty crossbow run scoreboard players set #axis crossbow 2

# 0 -> west
# 1 -> east
# 2 -> bottom
# 3 -> top
# 4 -> north
# 5 -> south

execute if score #axis crossbow matches 0 if score #dx crossbow matches 0.. run scoreboard players set #enter_face crossbow 0
execute if score #axis crossbow matches 0 if score #dx crossbow matches ..-1 run scoreboard players set #enter_face crossbow 1
execute if score #axis crossbow matches 1 if score #dy crossbow matches 0.. run scoreboard players set #enter_face crossbow 2
execute if score #axis crossbow matches 1 if score #dy crossbow matches ..-1 run scoreboard players set #enter_face crossbow 3
execute if score #axis crossbow matches 2 if score #dz crossbow matches 0.. run scoreboard players set #enter_face crossbow 4
execute if score #axis crossbow matches 2 if score #dz crossbow matches ..-1 run scoreboard players set #enter_face crossbow 5

scoreboard players operation #old_x crossbow = #x crossbow
scoreboard players operation #old_y crossbow = #y crossbow
scoreboard players operation #old_z crossbow = #z crossbow
scoreboard players operation #old_block_offset_x crossbow = #block_offset_x crossbow
scoreboard players operation #old_block_offset_y crossbow = #block_offset_y crossbow
scoreboard players operation #old_block_offset_z crossbow = #block_offset_z crossbow
scoreboard players operation #old_total_distance crossbow = #total_distance crossbow

execute if score #axis crossbow matches 0 run function crossbow:next_block/x
execute if score #axis crossbow matches 1 run function crossbow:next_block/y
execute if score #axis crossbow matches 2 run function crossbow:next_block/z

function crossbow:get_distance/main
execute if score #max_distance crossbow = #max_distance crossbow if score #total_distance crossbow >= #max_distance crossbow run function crossbow:next_block/get_max_distance_point

scoreboard players reset #dtx
scoreboard players reset #dty
scoreboard players reset #dtz
