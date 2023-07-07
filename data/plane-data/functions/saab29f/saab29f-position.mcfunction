#> plane-data:saab29f/saab29f-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position-individual

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^0.8 ^-8
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^ ^