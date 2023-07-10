execute unless block ~ ~ ~ minecraft:bamboo[leaves=large] run data modify storage crossbow:main shape set value [[312500000, 0, 312500000, 687500000, 1000000000, 687500000]]
execute if block ~ ~ ~ minecraft:bamboo[leaves=large] run data modify storage crossbow:main shape set value [[187500000, 0, 187500000, 812500000, 1000000000, 812500000]]
scoreboard players set #max_horizontal_offset crossbow 250000
function crossbow:get_hitbox/get_offset
