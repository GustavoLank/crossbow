execute store success score #c128 crossbow if entity @s[distance=..0.000128]
execute if score #c128 crossbow matches 0 run scoreboard players add #x crossbow 128
execute if score #c128 crossbow matches 0 positioned ~0.000128 ~ ~ run function crossbow:get_values/x/13
execute if score #c128 crossbow matches 1 run function crossbow:get_values/x/13