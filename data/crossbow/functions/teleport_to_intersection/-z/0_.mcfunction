scoreboard players add #tp_z crossbow 524288
execute positioned ~ ~ ~-524288 run function crossbow:teleport_to_intersection/-z/1
scoreboard players set #tp_z crossbow -2147483648
