#> plane:weapon/weapon-manager
#
# 機体に応じてweaponfunctionを呼び分け
# リロード時間とクールタイムのセット/減産をする
#
# @input
#   executer @e[tag=plane-root]
#   position at @e[tag=plane-root]
#
# @within
#   function plane:controll/weapon
#   function plane:plane-manager
    #declare score_holder #weapon-number #weapon-listの配列数
#
# 利用可能タグ controll-target:機体

#選択武器が爆弾の場合照準を出す
execute if entity @s[tag=flying] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:bomb} run function plane:weapon/util/display-aim

#武器使用
execute if entity @s[tag=need-use-weapon] run function plane:weapon/use-weapon

#武器種類数取得
execute store result score #weapon-number vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list

#発射クールタイム減算
function plane:weapon/util/cooltime-weapon

#残弾数が0になったら補充時間をセット
function plane:weapon/util/set-reloadtime

#reload完了したら弾を最大まで補充
function plane:weapon/util/reset-ammunition

#残弾補充時間減算
function plane:weapon/util/decrease-reload-time
