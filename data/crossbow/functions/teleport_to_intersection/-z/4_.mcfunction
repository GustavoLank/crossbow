scoreboard players add #tp_z crossbow 32768
execute positioned ~ ~ ~-032768 run function crossbow:teleport_to_intersection/-z/5
scoreboard players set #tp_z crossbow -2147483648
