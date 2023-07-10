execute store success score #c524288 crossbow if entity @s[distance=..0.524288]
execute if score #c524288 crossbow matches 0 run scoreboard players add #x crossbow 524288
execute if score #c524288 crossbow matches 0 positioned ~0.524288 ~ ~ run function crossbow:get_values/x/1
execute if score #c524288 crossbow matches 1 run function crossbow:get_values/x/1