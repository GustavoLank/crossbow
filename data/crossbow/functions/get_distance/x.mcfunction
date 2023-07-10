scoreboard players operation #distance crossbow = #x crossbow
execute if score #enter_face crossbow matches 0 run scoreboard players set #distance crossbow 1000000
execute if score #enter_face crossbow matches 1 run scoreboard players set #distance crossbow 0
scoreboard players operation #distance crossbow -= #old_x crossbow
scoreboard players operation #distance crossbow *= #1000 crossbow
scoreboard players operation #distance crossbow /= #dx crossbow
