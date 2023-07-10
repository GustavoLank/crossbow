execute store success score #c8192 crossbow if entity @s[distance=..0.008192]
execute if score #c8192 crossbow matches 0 run scoreboard players add #x crossbow 8192
execute if score #c8192 crossbow matches 0 positioned ~0.008192 ~ ~ run function crossbow:get_values/x/7
execute if score #c8192 crossbow matches 1 run function crossbow:get_values/x/7