scoreboard players add #tp_x crossbow 1
execute positioned ~-000001 ~ ~ run function crossbow:teleport_to_intersection/y
scoreboard players set #tp_x crossbow -2147483648
