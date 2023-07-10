scoreboard players add #tp_x crossbow 262144
execute positioned ~-262144 ~ ~ run function crossbow:teleport_to_intersection/-x/2
scoreboard players set #tp_x crossbow -2147483648
