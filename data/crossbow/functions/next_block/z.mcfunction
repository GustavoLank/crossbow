scoreboard players operation #temp crossbow = #dtz crossbow
scoreboard players operation #temp crossbow *= #dx crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #x crossbow += #temp crossbow

scoreboard players operation #temp crossbow = #dtz crossbow
scoreboard players operation #temp crossbow *= #dy crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #y crossbow += #temp crossbow

execute if score #dz crossbow matches 0.. run scoreboard players set #z crossbow 0
execute if score #dz crossbow matches ..-1 run scoreboard players set #z crossbow 1000000

execute if score #enter_face crossbow matches 4 run scoreboard players add #block_offset_z crossbow 1
execute if score #enter_face crossbow matches 5 run scoreboard players remove #block_offset_z crossbow 1

scoreboard players reset #temp crossbow
