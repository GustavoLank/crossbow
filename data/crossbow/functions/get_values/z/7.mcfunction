execute store success score #c4096 crossbow if entity @s[distance=..0.004096]
execute if score #c4096 crossbow matches 0 run scoreboard players add #z crossbow 4096
execute if score #c4096 crossbow matches 0 positioned ~ ~ ~0.004096 run function crossbow:get_values/z/8
execute if score #c4096 crossbow matches 1 run function crossbow:get_values/z/8