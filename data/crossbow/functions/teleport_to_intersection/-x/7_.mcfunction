scoreboard players add #tp_x crossbow 4096
execute positioned ~-004096 ~ ~ run function crossbow:teleport_to_intersection/-x/8
scoreboard players set #tp_x crossbow -2147483648
