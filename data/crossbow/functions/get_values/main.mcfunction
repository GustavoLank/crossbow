data modify storage crossbow:main position set from entity @s Pos
execute store result score #y crossbow run data get storage crossbow:main position[1] 1000000
scoreboard players operation #y crossbow %= #1000000 crossbow

execute store result score #block_x crossbow run data get storage crossbow:main position[0]
execute store result score #block_z crossbow run data get storage crossbow:main position[2]

execute align x run function crossbow:get_values/x/0
execute align z run function crossbow:get_values/z/0

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1000000 ~ ~
data modify storage crossbow:main position set from entity @s Pos
execute store result score #dx crossbow run data get storage crossbow:main position[0]
execute store result score #dy crossbow run data get storage crossbow:main position[1]
execute store result score #dz crossbow run data get storage crossbow:main position[2]

kill @s
