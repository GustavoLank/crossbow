# Crossbow
**Crossbow** is a raycast library for Minecraft data packs. It provides functions for targeting blocks with great precision, including non-full block shapes, blocks with offsets such as flowers and bamboo, and oriented shapes.

# How to use
This is the simplest way to use **Crossbow**:
```mcfunction
# example:main
scoreboard players set #max_blocks crossbow 10
scoreboard players set #max_distance crossbow 5000
execute anchored eyes positioned ^ ^ ^ summon marker run function example:as_marker
```
```mcfunction
# example:as_marker
function crossbow:start_and_teleport
execute positioned as @s run particle flame ~ ~ ~
kill @s
```
- `#max_blocks` is how many blocks the ray can enter (the recursion depth). If unset, it will be 128 blocks.
- `#max_distance` is the actual distance the ray can travel. 1000 = 1 block. If unset, only `#max_blocks` will be used as a limit.
- `crossbow:start_and_teleport` will cast a ray from the current position and rotation, then teleport the current entity to where the ray stopped.

## Outputs
Each function may set some useful values in scores.
- `crossbow:start`
    - `#intersected`
        - `0`: no collision
        - `1`: collided with full block
        - `2`: collided with non-full block
        - `3`: collided with non-full oriented block
    - `#total_distance`: the total distance travelled by the ray. 1000 = 1 block.
    - `#block_offset_x`, `#block_offset_y`, `#block_offset_z`: how many blocks the ray travelled in each axis.
    - `#enter_face`: which face the ray entered in it's last block.
- `crossbow:get_intersected_face`: only sets something if `#intersected` is 1 or 2
    - `#intersected_face`: the face intersected by the ray
        - 0 -> west -> -x
        - 1 -> east -> +x
        - 2 -> bottom -> -y
        - 3 -> top -> +y
        - 4 -> north -> -z
        - 5 -> south -> +z
- `crossbow:get_intersection`: sets the `#intersection_x`, `#intersection_y` and `#intersection_z` scores. The values are the coordinates relative to the block the ray stopped, ranging from 0 to 1000000, with 1000000 = 1 block.
- `crossbow:start_and_teleport`: the same as `crossbow:start` and `crossbow:get_intersection`

## Custom hitboxes
Though most blocks are already supported (see `#crossbow:supported_blocks`), you may want to change or add some.

To do this, you can use the `#crossbow:on_get_hitbox` function tag. 

It is called at the block currently being tested, just before going through the predefined block shapes. The `#hitbox` score can be used to return before that.

After calling the function tag, if `#hitbox` is 0, it will continue normally.
If it's -1, the block will be skipped. If it's 1, the block will be treated as a full block. Finally, if it's 2, the block will be treated as a block with custom hitbox.

To the latter, the `crossbow:main shape` storage must be set.

`shape` must be a list containing lists with 6 integers, like this:
```
[[0, 0, 0, 1000000000, 500000000, 1000000000]]
```
The numbers correspond respectively to the coordinates `min_x`, `min_y`, `min_z`, `max_x`, `max_y` and `max_z` of a cube. The values must be between 0 and 1000000000.

## Oriented shapes
In case you want oriented shapes for signs and torches, for example, you first need to set the `#is_oriented` score to 1, then set the `shape` storage like before, but each cube needs to be stored like this:
```
{
    "extents":[250000000, 250000000, 250000000],
    "center":[500000000, 500000000, 500000000],
    "rotation_matrix":[
        [1000, 0, 0],
        [0, 1000, 0],
        [0, 0, 1000]
    ]
}
```
`extents` and `center` values must be between 0 and 1000000000, while `rotation_matrix` values must be between 0 and 1000.

Note that I haven't done much testing with oriented shapes, so it's possible that there are several errors.
