execute store success score #c262144 crossbow if entity @s[distance=..0.262144]
execute if score #c262144 crossbow matches 0 run scoreboard players add #x crossbow 262144
execute if score #c262144 crossbow matches 0 positioned ~0.262144 ~ ~ run function crossbow:get_values/x/2
execute if score #c262144 crossbow matches 1 run function crossbow:get_values/x/2