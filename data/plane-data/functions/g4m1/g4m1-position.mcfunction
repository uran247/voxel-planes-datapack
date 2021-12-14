#> plane-data:g4m1/g4m1-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position-individual

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[type=armor_stand,tag=plane-seat,tag=target-parts,distance=..32] ^ ^2.5 ^-5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^0.5 ^0.7 ^8

