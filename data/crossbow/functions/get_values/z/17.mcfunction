execute store success score #c4 crossbow if entity @s[distance=..0.000004]
execute if score #c4 crossbow matches 0 run scoreboard players add #z crossbow 4
execute if score #c4 crossbow matches 0 positioned ~ ~ ~0.000004 run function crossbow:get_values/z/18
execute if score #c4 crossbow matches 1 run function crossbow:get_values/z/18