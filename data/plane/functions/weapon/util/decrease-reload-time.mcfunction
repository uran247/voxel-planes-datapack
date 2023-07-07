#> plane:weapon/util/decrease-reload-time
#
# @input
#   executer @e[tag=plane-root]
#   score #weapon-number vp.reg1 #武器種類数
#
# リロード時間減算
#
# @within function plane:weapon/weapon-manager
    #declare score_holder #reload

#cooltime減算
execute if score #weapon-number vp.reg1 matches 1.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 2.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 3.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 4.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 5.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 6.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-reload 0.9999999999999999

execute if score #weapon-number vp.reg1 matches 7.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-reload 0.9999999999999999


#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload set value 40
