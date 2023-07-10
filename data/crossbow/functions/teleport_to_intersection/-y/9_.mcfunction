scoreboard players add #tp_y crossbow 1024
execute positioned ~ ~-001024 ~ run function crossbow:teleport_to_intersection/-y/10
scoreboard players set #tp_y crossbow -2147483648
