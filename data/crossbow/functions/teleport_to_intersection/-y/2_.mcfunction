scoreboard players add #tp_y crossbow 131072
execute positioned ~ ~-131072 ~ run function crossbow:teleport_to_intersection/-y/3
scoreboard players set #tp_y crossbow -2147483648
