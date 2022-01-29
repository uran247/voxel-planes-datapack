#> plane:weapon/util/ir-lock-on
#
# IRミサイルの攻撃対象をロックオンする
#
# @input
#   executer @e[tag=plane-root]
#   position at @e[tag=plane-root]
#
# @within
#   function plane:weapon/weapon-manager
#
# 利用可能タグ controll-target:機体

#> private
#   @private
    #declare score_holder #gtime #ゲーム内の時間[s]

#現在時刻取得
execute store result score #gtime vp.reg1 run time query gametime
scoreboard players operation #gtime vp.reg1 %= #9 vp.Num

# 未ロックオン中の音とパーティクル
execute if score #gtime vp.reg1 matches 0 run playsound minecraft:block.note_block.bit player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0
title @p[tag=plane-rider] subtitle [{"text": "locking on ..."}]
title @p[tag=plane-rider] times 0 2 0
title @p[tag=plane-rider] title [{"text": ""}]

# ロックオン後の音とパーティクル
execute if score #gtime vp.reg1 matches 0 run playsound minecraft:block.note_block.bell player @p[tag=plane-rider] ~ ~ ~ 1 1.334840 0
title @p[tag=plane-rider] subtitle [{"text": "locked on","color": "yellow"}]
title @p[tag=plane-rider] times 0 2 0
title @p[tag=plane-rider] title [{"text": ""}]