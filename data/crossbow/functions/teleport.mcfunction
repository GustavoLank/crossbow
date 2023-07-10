scoreboard players operation #tp_x crossbow = #block_offset_x crossbow
scoreboard players operation #tp_y crossbow = #block_offset_y crossbow
scoreboard players operation #tp_z crossbow = #block_offset_z crossbow
scoreboard players operation #tp_fx crossbow = #intersection_x crossbow
scoreboard players operation #tp_fy crossbow = #intersection_y crossbow
scoreboard players operation #tp_fz crossbow = #intersection_z crossbow
execute align xyz run function crossbow:teleport_to_intersection/x
