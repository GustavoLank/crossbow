scoreboard players add #tp_y crossbow 2048
execute positioned ~ ~-002048 ~ run function crossbow:teleport_to_intersection/-y/9
scoreboard players set #tp_y crossbow -2147483648
