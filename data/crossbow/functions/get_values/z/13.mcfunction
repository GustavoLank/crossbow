execute store success score #c64 crossbow if entity @s[distance=..0.000064]
execute if score #c64 crossbow matches 0 run scoreboard players add #z crossbow 64
execute if score #c64 crossbow matches 0 positioned ~ ~ ~0.000064 run function crossbow:get_values/z/14
execute if score #c64 crossbow matches 1 run function crossbow:get_values/z/14