scoreboard players operation #temp crossbow = #dtx crossbow
scoreboard players operation #temp crossbow *= #dz crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #z crossbow += #temp crossbow

scoreboard players operation #temp crossbow = #dtx crossbow
scoreboard players operation #temp crossbow *= #dy crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #y crossbow += #temp crossbow


execute if score #dx crossbow matches 0.. run scoreboard players set #x crossbow 0
execute if score #dx crossbow matches ..-1 run scoreboard players set #x crossbow 1000000

execute if score #enter_face crossbow matches 0 run scoreboard players add #block_offset_x crossbow 1
execute if score #enter_face crossbow matches 1 run scoreboard players remove #block_offset_x crossbow 1

scoreboard players reset #temp crossbow
