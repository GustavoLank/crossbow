execute if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run data modify storage crossbow:main shape set value [[812500000, 0, 0, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run data modify storage crossbow:main shape set value [[0, 0, 0, 187500000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run data modify storage crossbow:main shape set value [[0, 0, 812500000, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run data modify storage crossbow:main shape set value [[0, 0, 0, 1000000000, 1000000000, 187500000]]
execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=left,open=true] run data modify storage crossbow:main shape set value [[0, 0, 812500000, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=left,open=true] run data modify storage crossbow:main shape set value [[0, 0, 0, 1000000000, 1000000000, 187500000]]
execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=left,open=true] run data modify storage crossbow:main shape set value [[0, 0, 0, 187500000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=left,open=true] run data modify storage crossbow:main shape set value [[812500000, 0, 0, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=right,open=true] run data modify storage crossbow:main shape set value [[0, 0, 812500000, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=right,open=true] run data modify storage crossbow:main shape set value [[0, 0, 0, 1000000000, 1000000000, 187500000]]
execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=right,open=true] run data modify storage crossbow:main shape set value [[812500000, 0, 0, 1000000000, 1000000000, 1000000000]]
execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=right,open=true] run data modify storage crossbow:main shape set value [[0, 0, 0, 187500000, 1000000000, 1000000000]]