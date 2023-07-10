execute unless block ~ ~ ~ #minecraft:fence_gates[facing=west] unless block ~ ~ ~ #minecraft:fence_gates[facing=east] run data modify storage crossbow:main shape set value [[0, 0, 375000000, 1000000000, 1000000000, 625000000]]
execute unless block ~ ~ ~ #minecraft:fence_gates[facing=north] unless block ~ ~ ~ #minecraft:fence_gates[facing=south] run data modify storage crossbow:main shape set value [[375000000, 0, 0, 625000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=true] run data modify storage crossbow:main shape[0][4] set value 812500000
