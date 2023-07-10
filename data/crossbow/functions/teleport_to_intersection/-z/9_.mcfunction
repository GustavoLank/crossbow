scoreboard players add #tp_z crossbow 1024
execute positioned ~ ~ ~-001024 run function crossbow:teleport_to_intersection/-z/10
scoreboard players set #tp_z crossbow -2147483648
