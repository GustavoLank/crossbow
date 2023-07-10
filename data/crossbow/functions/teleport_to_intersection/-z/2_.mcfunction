scoreboard players add #tp_z crossbow 131072
execute positioned ~ ~ ~-131072 run function crossbow:teleport_to_intersection/-z/3
scoreboard players set #tp_z crossbow -2147483648
