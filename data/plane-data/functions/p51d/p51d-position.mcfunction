#> plane-data:p51d/p51d-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position-individual

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^ ^-3
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts,distance=..32] ^ ^ ^3