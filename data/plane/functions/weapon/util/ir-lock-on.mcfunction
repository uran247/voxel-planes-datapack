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
    #declare tag target-candidate #ミサイルロックオン候補

#現在時刻取得
execute store result score #gtime vp.reg1 run time query gametime
scoreboard players operation #gtime vp.reg1 %= #10 vp.Num

#目標探知
execute if score #gtime vp.reg1 matches 0 run function plane:weapon/util/ir-search-target

#title表示
execute unless score @s vp.lockon-time matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locking on ..."}]
execute if score @s vp.lockon-time matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locked on","color": "yellow"}]
title @p[tag=plane-pilot] times 0 1 22
title @p[tag=plane-pilot] title [{"text": ""}]

#UUID記録
execute if score #gtime vp.reg1 matches 0 if score #target-uuid vp.return matches -2147483648..2147483647 run scoreboard players operation #target-uuid vp.reg1 = #target-uuid vp.return
execute if score #gtime vp.reg1 matches 0 unless score #target-uuid vp.return matches -2147483648..2147483647 run scoreboard players reset #target-uuid vp.reg1
scoreboard players reset #target-uuid vp.return
