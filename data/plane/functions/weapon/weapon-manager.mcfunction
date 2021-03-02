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

execute if entity @s[tag=d3a,tag=need-use-weapon] run function plane-data:d3a/d3a-weapon-manager
execute if entity @s[tag=ki21,tag=need-use-weapon] run function plane-data:ki-21/ki21-weapon-manager
execute if entity @s[tag=ki43,tag=need-use-weapon] run function plane-data:ki-43/ki43-weapon-manager
execute if entity @s[tag=ki44,tag=need-use-weapon] run function plane-data:ki-44/ki44-weapon-manager
execute if entity @s[tag=d4y2,tag=need-use-weapon] run function plane-data:d4y2/d4y2-weapon-manager
execute if entity @s[tag=j2m3,tag=need-use-weapon] run function plane-data:j2m3/j2m3-weapon-manager
execute if entity @s[tag=g4m1,tag=need-use-weapon] run function plane-data:g4m1/g4m1-weapon-manager
execute if entity @s[tag=ki61,tag=need-use-weapon] run function plane-data:ki-61/ki61-weapon-manager
execute if entity @s[tag=n1k2,tag=need-use-weapon] run function plane-data:n1k2/n1k2-weapon-manager
execute if entity @s[tag=ki49,tag=need-use-weapon] run function plane-data:ki-49/ki49-weapon-manager
execute if entity @s[tag=fw190d9,tag=need-use-weapon] run function plane-data:fw190d-9/fw190d9-weapon-manager
execute if entity @s[tag=seafuryfb11,tag=need-use-weapon] run function plane-data:seafuryfb11/seafuryfb11-weapon-manager

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
