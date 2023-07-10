#  int i = pX * 3129871 ^ pZ * 116129781;
#  i = i * i * 42317861 + i * 11;
#  i >>= 16;
#
#  offset_x = clamp((i & 15) / 15.0F) - 0.5D) * 0.5D, -f, f);
#  offset_z = clamp((i >> 8 & 15) / 15.0F) - 0.5D) * 0.5D, -f, f);

scoreboard players operation #a crossbow = #block_x crossbow
scoreboard players operation #a crossbow += #block_offset_x crossbow
scoreboard players operation #a crossbow *= #3129871 crossbow

scoreboard players operation #b crossbow = #block_z crossbow
scoreboard players operation #b crossbow += #block_offset_z crossbow
scoreboard players operation #b crossbow *= #116129781 crossbow

scoreboard players operation #i crossbow = #a crossbow
scoreboard players operation #i crossbow += #b crossbow

scoreboard players set #temp crossbow 0
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players set #temp crossbow -2147483648
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 1073741824
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 536870912
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 268435456
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 134217728
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 67108864
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 33554432
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 16777216
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 8388608
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 4194304
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 2097152
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 1048576
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 524288
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 262144
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 131072
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 65536
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 32768
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 16384
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 8192
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 4096
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 2048
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 1024
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 512
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 256
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 128
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 64
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 32
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 16
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 8
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 4
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 2
scoreboard players operation #a crossbow *= #2 crossbow
scoreboard players operation #b crossbow *= #2 crossbow
execute if score #a crossbow matches ..-1 if score #b crossbow matches ..-1 run scoreboard players add #temp crossbow 1
scoreboard players operation #temp crossbow *= #2 crossbow
scoreboard players operation #i crossbow -= #temp crossbow

scoreboard players operation #temp crossbow = #i crossbow
scoreboard players operation #temp crossbow *= #11 crossbow
scoreboard players operation #i crossbow *= #i crossbow
scoreboard players operation #i crossbow *= #42317861 crossbow
scoreboard players operation #i crossbow += #temp crossbow

scoreboard players operation #i crossbow /= #65536 crossbow

scoreboard players operation #shape_offset_x crossbow = #i crossbow
scoreboard players operation #shape_offset_x crossbow %= #16 crossbow
scoreboard players operation #shape_offset_x crossbow *= #1000000 crossbow
scoreboard players operation #shape_offset_x crossbow /= #15 crossbow
scoreboard players remove #shape_offset_x crossbow 500000
scoreboard players operation #shape_offset_x crossbow /= #2 crossbow

scoreboard players operation #shape_offset_z crossbow = #i crossbow
scoreboard players operation #shape_offset_z crossbow /= #256 crossbow
scoreboard players operation #shape_offset_z crossbow %= #16 crossbow
scoreboard players operation #shape_offset_z crossbow *= #1000000 crossbow
scoreboard players operation #shape_offset_z crossbow /= #15 crossbow
scoreboard players remove #shape_offset_z crossbow 500000
scoreboard players operation #shape_offset_z crossbow /= #2 crossbow

scoreboard players operation #shape_offset_x crossbow < #max_horizontal_offset crossbow
scoreboard players operation #shape_offset_z crossbow < #max_horizontal_offset crossbow
scoreboard players operation #max_horizontal_offset crossbow *= #-1 crossbow
scoreboard players operation #shape_offset_x crossbow > #max_horizontal_offset crossbow
scoreboard players operation #shape_offset_z crossbow > #max_horizontal_offset crossbow

scoreboard players operation #shape_offset_x crossbow *= #1000 crossbow
scoreboard players operation #shape_offset_z crossbow *= #1000 crossbow
