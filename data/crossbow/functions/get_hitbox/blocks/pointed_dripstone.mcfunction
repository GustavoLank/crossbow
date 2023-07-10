execute if block ~ ~ ~ pointed_dripstone[thickness=base] run data modify storage crossbow:main shape set value [[125000000, 0, 125000000, 875000000, 1000000000, 875000000]]
execute if block ~ ~ ~ pointed_dripstone[thickness=middle] run data modify storage crossbow:main shape set value [[187500000, 0, 187500000, 812500000, 1000000000, 812500000]]
execute if block ~ ~ ~ pointed_dripstone[thickness=frustum] run data modify storage crossbow:main shape set value [[250000000, 0, 250000000, 750000000, 1000000000, 750000000]]
execute if block ~ ~ ~ pointed_dripstone[thickness=tip_merge] run data modify storage crossbow:main shape set value [[312500000, 0, 312500000, 687500000, 1000000000, 687500000]]
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run data modify storage crossbow:main shape set value [[312500000, 0, 312500000, 687500000, 687500000, 687500000]]
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=down] run data modify storage crossbow:main shape set value [[312500000, 312500000, 312500000, 687500000, 1000000000, 687500000]]

scoreboard players set #max_horizontal_offset crossbow 125000
function crossbow:get_hitbox/get_offset
