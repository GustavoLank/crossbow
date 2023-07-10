execute store success score #c256 crossbow if entity @s[distance=..0.000256]
execute if score #c256 crossbow matches 0 run scoreboard players add #x crossbow 256
execute if score #c256 crossbow matches 0 positioned ~0.000256 ~ ~ run function crossbow:get_values/x/12
execute if score #c256 crossbow matches 1 run function crossbow:get_values/x/12