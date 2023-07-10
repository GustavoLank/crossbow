scoreboard players operation #distance crossbow = #z crossbow
execute if score #enter_face crossbow matches 4 run scoreboard players set #distance crossbow 1000000
execute if score #enter_face crossbow matches 5 run scoreboard players set #distance crossbow 0
scoreboard players operation #distance crossbow -= #old_z crossbow
scoreboard players operation #distance crossbow *= #1000 crossbow
scoreboard players operation #distance crossbow /= #dz crossbow
