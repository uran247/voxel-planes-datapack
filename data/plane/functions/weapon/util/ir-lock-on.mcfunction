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

#> private
#   @private
    #declare score_holder #exectime #ゲーム内の時間[s]
    #declare score_holder #lockon-time #ゲーム内の時間[s]
    #declare tag target-candidate #ミサイルロックオン候補

#現在時刻取得
execute store result score #exectime vp.reg1 run time query gametime
scoreboard players operation #exectime vp.reg1 %= #10 vp.Num

#目標探知
execute if score #exectime vp.reg1 matches 0 run function plane:weapon/util/ir-search-target

#title表示
execute unless score @s vp.lockon-time matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locking on ..."}]
execute if score @s vp.lockon-time matches 5.. run title @p[tag=plane-pilot] subtitle [{"text": "locked on","color": "yellow"}]
execute if score #exectime vp.reg1 matches 0 run title @p[tag=plane-pilot] times 0 10 22
execute if score #exectime vp.reg1 matches 0 run title @p[tag=plane-pilot] title [{"text": ""}]

#UUID記録
execute if score #exectime vp.reg1 matches 0 if data storage voxel-planes:return return.target-uuid run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid set from storage voxel-planes:return return.target-uuid
execute if score #exectime vp.reg1 matches 0 unless data storage voxel-planes:return return.target-uuid run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid
    #tellraw @p [{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid","storage": "oh_my_dat:"}]
