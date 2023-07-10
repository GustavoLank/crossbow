execute store success score #c131072 crossbow if entity @s[distance=..0.131072]
execute if score #c131072 crossbow matches 0 run scoreboard players add #z crossbow 131072
execute if score #c131072 crossbow matches 0 positioned ~ ~ ~0.131072 run function crossbow:get_values/z/3
execute if score #c131072 crossbow matches 1 run function crossbow:get_values/z/3