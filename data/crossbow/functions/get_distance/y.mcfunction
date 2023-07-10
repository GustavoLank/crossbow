scoreboard players operation #distance crossbow = #y crossbow
execute if score #enter_face crossbow matches 2 run scoreboard players set #distance crossbow 1000000
execute if score #enter_face crossbow matches 3 run scoreboard players set #distance crossbow 0
scoreboard players operation #distance crossbow -= #old_y crossbow
scoreboard players operation #distance crossbow *= #1000 crossbow
scoreboard players operation #distance crossbow /= #dy crossbow
