scoreboard players add #tp_x crossbow 131072
execute positioned ~-131072 ~ ~ run function crossbow:teleport_to_intersection/-x/3
scoreboard players set #tp_x crossbow -2147483648
