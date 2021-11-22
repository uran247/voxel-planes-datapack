#> plane-data:b-17g/b-17g-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^1.5 ^-5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^ ^6.5

