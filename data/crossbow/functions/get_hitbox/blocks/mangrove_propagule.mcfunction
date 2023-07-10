execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=false] run data modify storage crossbow:main shape set value [[437500000, 0, 437500000, 562500000, 1000000000, 562500000]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=0] run data modify storage crossbow:main shape set value [[437500000, 812500000, 437500000, 562500000, 1000000000, 562500000]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=1] run data modify storage crossbow:main shape set value [[437500000, 625000000, 437500000, 562500000, 1000000000, 562500000]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=2] run data modify storage crossbow:main shape set value [[437500000, 437500000, 437500000, 562500000, 1000000000, 562500000]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=3] run data modify storage crossbow:main shape set value [[437500000, 187500000, 437500000, 562500000, 1000000000, 562500000]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=4] run data modify storage crossbow:main shape set value [[437500000, 0, 437500000, 562500000, 1000000000, 562500000]]
scoreboard players set #max_horizontal_offset crossbow 250000
function crossbow:get_hitbox/get_offset
