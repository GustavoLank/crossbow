# This function is called when entering a
# block not in the block tag `#crossbow:ignore`
#
# The `got_hitbox` score and `#crossbow:on_get_hitbox`
# function tag may be used to add custom hitboxes
#
# when `got_hitbox` =
#    -1 -> ignored
#     0 -> keeps default behavior
#     1 -> full block
#     2 -> non-full hitbox
#
# The function returns back to `crossbow:raycast/found_block`

scoreboard players set #is_oriented crossbow 0
scoreboard players set #hitbox crossbow 0

function #crossbow:on_get_hitbox

execute if score #hitbox crossbow matches 1 run return 1
execute if score #hitbox crossbow matches -1..2 unless score #hitbox crossbow matches 0 run return 0

execute if block ~ ~ ~ #crossbow:tree/0 run function crossbow:get_hitbox/tree/0
execute if block ~ ~ ~ #crossbow:tree/1 run function crossbow:get_hitbox/tree/1
execute if block ~ ~ ~ #crossbow:tree/2 run function crossbow:get_hitbox/tree/2
execute if block ~ ~ ~ #crossbow:tree/3 run function crossbow:get_hitbox/tree/3
execute if block ~ ~ ~ #crossbow:tree/4 run function crossbow:get_hitbox/tree/4
execute if block ~ ~ ~ #crossbow:tree/5 run function crossbow:get_hitbox/tree/5

execute unless score #hitbox crossbow matches 2 run return 1
return 0
