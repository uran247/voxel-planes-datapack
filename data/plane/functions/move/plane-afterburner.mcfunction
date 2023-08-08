#> plane:move/plane-afterburner
# 
# affterburnerの使用時間とリロード時間に関する処理
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:move/plane-move

#> prv
# @private
    #declare score_holder #wep-time
    #declare score_holder #wep-reload

execute if entity @s[tag=reloading-wep] run function plane:move/reload-wep
execute if entity @s[tag=use-wep] run function plane:move/decrease-weptime


