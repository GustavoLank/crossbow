execute store success score #c16384 crossbow if entity @s[distance=..0.016384]
execute if score #c16384 crossbow matches 0 run scoreboard players add #z crossbow 16384
execute if score #c16384 crossbow matches 0 positioned ~ ~ ~0.016384 run function crossbow:get_values/z/6
execute if score #c16384 crossbow matches 1 run function crossbow:get_values/z/6