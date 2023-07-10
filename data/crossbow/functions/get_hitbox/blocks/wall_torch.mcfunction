execute if block ~ ~ ~ #crossbow:wall_torches[facing=north] run data modify storage crossbow:main shape set value [[343750000, 187500000, 687500000, 656250000, 812500000, 1000000000]]
execute if block ~ ~ ~ #crossbow:wall_torches[facing=south] run data modify storage crossbow:main shape set value [[343750000, 187500000, 0, 656250000, 812500000, 312500000]]
execute if block ~ ~ ~ #crossbow:wall_torches[facing=west] run data modify storage crossbow:main shape set value [[687500000, 187500000, 343750000, 1000000000, 812500000, 656250000]]
execute if block ~ ~ ~ #crossbow:wall_torches[facing=east] run data modify storage crossbow:main shape set value [[0, 187500000, 343750000, 312500000, 812500000, 656250000]]
