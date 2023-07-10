execute store success score #c2048 crossbow if entity @s[distance=..0.002048]
execute if score #c2048 crossbow matches 0 run scoreboard players add #x crossbow 2048
execute if score #c2048 crossbow matches 0 positioned ~0.002048 ~ ~ run function crossbow:get_values/x/9
execute if score #c2048 crossbow matches 1 run function crossbow:get_values/x/9