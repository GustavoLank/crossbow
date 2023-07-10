scoreboard players add #tp_z crossbow 1
execute positioned ~ ~ ~-000001 run function crossbow:teleport_to_intersection/fx/0
scoreboard players set #tp_z crossbow -2147483648
