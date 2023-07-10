execute store success score #c1024 crossbow if entity @s[distance=..0.001024]
execute if score #c1024 crossbow matches 0 run scoreboard players add #x crossbow 1024
execute if score #c1024 crossbow matches 0 positioned ~0.001024 ~ ~ run function crossbow:get_values/x/10
execute if score #c1024 crossbow matches 1 run function crossbow:get_values/x/10