scoreboard players add #tp_x crossbow 2048
execute positioned ~-002048 ~ ~ run function crossbow:teleport_to_intersection/-x/9
scoreboard players set #tp_x crossbow -2147483648
