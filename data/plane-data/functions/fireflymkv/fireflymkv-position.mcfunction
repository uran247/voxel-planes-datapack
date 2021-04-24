#> plane-data:fireflymkv/fireflymkv-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position


#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.2 ^ ^-2.5
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^0.2 ^-0.5 ^3

