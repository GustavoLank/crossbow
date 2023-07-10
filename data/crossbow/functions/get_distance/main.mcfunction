execute unless score #dy crossbow matches 0 run function crossbow:get_distance/y
execute if score #dy crossbow matches 0 unless score #dx crossbow matches 0 run function crossbow:get_distance/x
execute if score #dy crossbow matches 0 if score #dx crossbow matches 0 run function crossbow:get_distance/z
execute if score #distance crossbow matches ..-1 run scoreboard players operation #distance crossbow *= #-1 crossbow
scoreboard players operation #total_distance crossbow += #distance crossbow
