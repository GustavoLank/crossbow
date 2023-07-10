tp @s ~ ~ ~ ~ ~
function crossbow:get_intersection
scoreboard players operation #tp_fx crossbow = #intersection_x crossbow
scoreboard players operation #tp_fy crossbow = #intersection_y crossbow
scoreboard players operation #tp_fz crossbow = #intersection_z crossbow
function crossbow:teleport_to_intersection/fx/0
