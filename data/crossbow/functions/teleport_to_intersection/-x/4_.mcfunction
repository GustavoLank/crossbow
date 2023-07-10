scoreboard players add #tp_x crossbow 32768
execute positioned ~-032768 ~ ~ run function crossbow:teleport_to_intersection/-x/5
scoreboard players set #tp_x crossbow -2147483648
