execute store success score #c65536 crossbow if entity @s[distance=..0.065536]
execute if score #c65536 crossbow matches 0 run scoreboard players add #z crossbow 65536
execute if score #c65536 crossbow matches 0 positioned ~ ~ ~0.065536 run function crossbow:get_values/z/4
execute if score #c65536 crossbow matches 1 run function crossbow:get_values/z/4