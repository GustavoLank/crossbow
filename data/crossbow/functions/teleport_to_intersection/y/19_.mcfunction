scoreboard players remove #tp_y crossbow 1
execute positioned ~ ~000001 ~ run function crossbow:teleport_to_intersection/z
scoreboard players set #tp_y crossbow 2147483647
