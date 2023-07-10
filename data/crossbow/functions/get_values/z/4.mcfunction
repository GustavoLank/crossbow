execute store success score #c32768 crossbow if entity @s[distance=..0.032768]
execute if score #c32768 crossbow matches 0 run scoreboard players add #z crossbow 32768
execute if score #c32768 crossbow matches 0 positioned ~ ~ ~0.032768 run function crossbow:get_values/z/5
execute if score #c32768 crossbow matches 1 run function crossbow:get_values/z/5