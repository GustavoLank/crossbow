scoreboard players add #tp_x crossbow 1024
execute positioned ~-001024 ~ ~ run function crossbow:teleport_to_intersection/-x/10
scoreboard players set #tp_x crossbow -2147483648
