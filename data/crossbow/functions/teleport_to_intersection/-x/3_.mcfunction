scoreboard players add #tp_x crossbow 65536
execute positioned ~-065536 ~ ~ run function crossbow:teleport_to_intersection/-x/4
scoreboard players set #tp_x crossbow -2147483648
