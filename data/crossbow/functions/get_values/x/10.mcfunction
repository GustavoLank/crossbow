execute store success score #c512 crossbow if entity @s[distance=..0.000512]
execute if score #c512 crossbow matches 0 run scoreboard players add #x crossbow 512
execute if score #c512 crossbow matches 0 positioned ~0.000512 ~ ~ run function crossbow:get_values/x/11
execute if score #c512 crossbow matches 1 run function crossbow:get_values/x/11