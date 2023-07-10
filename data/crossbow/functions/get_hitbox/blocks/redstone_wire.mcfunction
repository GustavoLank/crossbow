data modify storage crossbow:main shape set value [[187500000, 0, 187500000, 812500000, 62500000, 812500000]]

execute unless block ~ ~ ~ minecraft:redstone_wire[north=none] run data modify storage crossbow:main shape append value [187500000, 0, 0, 812500000, 62500000, 187500000]
execute unless block ~ ~ ~ minecraft:redstone_wire[south=none] run data modify storage crossbow:main shape append value [187500000, 0, 812500000, 812500000, 62500000, 1000000000]
execute unless block ~ ~ ~ minecraft:redstone_wire[east=none] run data modify storage crossbow:main shape append value [812500000, 0, 187500000, 1000000000, 62500000, 812500000]
execute unless block ~ ~ ~ minecraft:redstone_wire[west=none] run data modify storage crossbow:main shape append value [0, 0, 187500000, 187500000, 62500000, 812500000]

execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run data modify storage crossbow:main shape append value [187500000, 0, 0, 812500000, 1000000000, 62500000]
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run data modify storage crossbow:main shape append value [187500000, 0, 937500000, 812500000, 1000000000, 1000000000]
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run data modify storage crossbow:main shape append value [937500000, 0, 187500000, 1000000000, 1000000000, 812500000]
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run data modify storage crossbow:main shape append value [0, 0, 187500000, 62500000, 1000000000, 812500000]
