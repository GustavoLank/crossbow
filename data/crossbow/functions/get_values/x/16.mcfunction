execute store success score #c8 crossbow if entity @s[distance=..0.000008]
execute if score #c8 crossbow matches 0 run scoreboard players add #x crossbow 8
execute if score #c8 crossbow matches 0 positioned ~0.000008 ~ ~ run function crossbow:get_values/x/17
execute if score #c8 crossbow matches 1 run function crossbow:get_values/x/17