execute store success score #c16 crossbow if entity @s[distance=..0.000016]
execute if score #c16 crossbow matches 0 run scoreboard players add #x crossbow 16
execute if score #c16 crossbow matches 0 positioned ~0.000016 ~ ~ run function crossbow:get_values/x/16
execute if score #c16 crossbow matches 1 run function crossbow:get_values/x/16