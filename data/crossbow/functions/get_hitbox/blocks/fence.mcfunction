data modify storage crossbow:main shape set value [[375000000, 0, 375000000, 625000000, 1000000000, 625000000]]
execute if block ~ ~ ~ #minecraft:fences[west=true] run data modify storage crossbow:main shape append value [0, 0, 375000000, 375000000, 1000000000, 625000000]
execute if block ~ ~ ~ #minecraft:fences[east=true] run data modify storage crossbow:main shape append value [625000000, 0, 375000000, 1000000000, 1000000000, 625000000]
execute if block ~ ~ ~ #minecraft:fences[north=true] run data modify storage crossbow:main shape append value [375000000, 0, 0, 625000000, 1000000000, 375000000]
execute if block ~ ~ ~ #minecraft:fences[south=true] run data modify storage crossbow:main shape append value [375000000, 0, 625000000, 625000000, 1000000000, 1000000000]
