#> plane-data:ki-61/ki-61-position
#
# plane-seatの位置を調整する
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:position/position

#> private
# @private
    #declare score_holder #summoned-bomb #爆弾の召喚に成功したかどうかのフラグ
    #declare score_holder #plane-id #実行者のplane-id

#seatの位置修正
execute at @s[tag=has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.2 ^-4.3
execute at @s[tag=!has-rider] run tp @e[tag=plane-seat,tag=target-parts] ^ ^-0.4 ^0.5
