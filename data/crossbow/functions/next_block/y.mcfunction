scoreboard players operation #temp crossbow = #dty crossbow
scoreboard players operation #temp crossbow *= #dx crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #x crossbow += #temp crossbow

scoreboard players operation #temp crossbow = #dty crossbow
scoreboard players operation #temp crossbow *= #dz crossbow
scoreboard players operation #temp crossbow /= #1000 crossbow
scoreboard players operation #z crossbow += #temp crossbow

execute if score #dy crossbow matches 0.. run scoreboard players set #y crossbow 0
execute if score #dy crossbow matches ..-1 run scoreboard players set #y crossbow 1000000

execute if score #enter_face crossbow matches 2 run scoreboard players add #block_offset_y crossbow 1
execute if score #enter_face crossbow matches 3 run scoreboard players remove #block_offset_y crossbow 1

scoreboard players reset #temp crossbow
