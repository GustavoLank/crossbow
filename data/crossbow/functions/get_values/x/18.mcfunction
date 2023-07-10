execute store success score #c2 crossbow if entity @s[distance=..0.000002]
execute if score #c2 crossbow matches 0 run scoreboard players add #x crossbow 2
execute if score #c2 crossbow matches 0 positioned ~0.000002 ~ ~ unless entity @s[distance=..0.000001] run scoreboard players add #x crossbow 1
execute if score #c2 crossbow matches 1 unless entity @s[distance=..0.000001] run scoreboard players add #x crossbow 1