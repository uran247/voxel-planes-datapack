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
    #declare score_holder #lockon-time #ゲーム内の時間[s]
    #declare tag target-candidate #ミサイルロックオン候補

#現在時刻取得
execute store result score #gtime vp.reg1 run time query gametime
scoreboard players operation #gtime vp.reg1 %= #10 vp.Num

#目標探知
execute if score #gtime vp.reg1 matches 0 run function plane:weapon/util/ir-search-target

#title表示
execute store result score #lockon-time vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.lockon-time
execute unless score #lockon-time vp.reg1 matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locking on ..."}]
execute if score #lockon-time vp.reg1 matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locked on","color": "yellow"}]
title @p[tag=plane-pilot] times 0 1 22
title @p[tag=plane-pilot] title [{"text": ""}]

#UUID記録
execute if score #gtime vp.reg1 matches 0 if data storage voxel-planes:return return.target-uuid run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid set from storage voxel-planes:return return.target-uuid
execute if score #gtime vp.reg1 matches 0 unless data storage voxel-planes:return return.target-uuid run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid
