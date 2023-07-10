scoreboard players remove #blocks crossbow 1
execute if score #blocks crossbow matches 0 run scoreboard players set #stop crossbow 1
execute if score #blocks crossbow matches 0 if score #tp_when_finished crossbow matches 1 run function crossbow:raycast/teleport
execute if score #blocks crossbow matches 0 run return 0
execute unless block ~ ~ ~ #crossbow:ignore run function crossbow:raycast/found_block
execute if score #stop crossbow matches 0 run function crossbow:next_block/main
execute if score #stop crossbow matches 1 if score #tp_when_finished crossbow matches 1 run function crossbow:raycast/teleport
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 0 positioned ~1 ~ ~ run function crossbow:raycast/loop
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 1 positioned ~-1 ~ ~ run function crossbow:raycast/loop
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 2 positioned ~ ~1 ~ run function crossbow:raycast/loop
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 3 positioned ~ ~-1 ~ run function crossbow:raycast/loop
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 4 positioned ~ ~ ~1 run function crossbow:raycast/loop
execute if score #stop crossbow matches 0 if score #enter_face crossbow matches 5 positioned ~ ~ ~-1 run function crossbow:raycast/loop
