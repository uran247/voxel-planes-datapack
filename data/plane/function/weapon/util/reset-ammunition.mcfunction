#> plane:weapon/util/reset-ammunition
#
# @input
#   executer @e[tag=plane-root]
#   score #weapon-number vp.reg1 #武器種類数
#
# リロード時間を迎えたEntityの弾薬数をリセット
#
# @within function plane:weapon/weapon-manager

execute if score #weapon-number vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 3.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 4.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 5.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 6.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.max-ammunition
execute if score #weapon-number vp.reg1 matches 7.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data{current-ammunition:-1,current-reload:0} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-ammunition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.max-ammunition
