scoreboard players add #tp_z crossbow 2048
execute positioned ~ ~ ~-002048 run function crossbow:teleport_to_intersection/-z/9
scoreboard players set #tp_z crossbow -2147483648
