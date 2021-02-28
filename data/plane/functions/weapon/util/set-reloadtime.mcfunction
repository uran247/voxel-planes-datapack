#> plane:weapon/util/set-reloadtime
#
# @input
#   executer @e[tag=plane-root]
#   score #weapon-number vp.reg1 #武器種類数
#
# 弾薬数が0のEntityにリロード時間をセット
# ammunitionに-1を入れてリロード中とわかるようにする
#
# @within function plane:weapon/weapon-manager

execute if score #weapon-number vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.max-reload
execute if score #weapon-number vp.reg1 matches 2.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.max-reload
execute if score #weapon-number vp.reg1 matches 3.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.max-reload
execute if score #weapon-number vp.reg1 matches 4.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.max-reload
execute if score #weapon-number vp.reg1 matches 5.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.max-reload
execute if score #weapon-number vp.reg1 matches 6.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.max-reload
execute if score #weapon-number vp.reg1 matches 7.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data{current-ammunition:0}.current-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.max-reload

execute if score #weapon-number vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 2.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 3.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 4.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 5.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 6.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data{current-ammunition:0}.current-ammunition set value -1
execute if score #weapon-number vp.reg1 matches 7.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data{current-ammunition:0}.current-ammunition set value -1

