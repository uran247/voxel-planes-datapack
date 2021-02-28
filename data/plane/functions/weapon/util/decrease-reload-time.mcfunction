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
execute if score #weapon-number vp.reg1 matches 1.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-reload
execute if score #weapon-number vp.reg1 matches 1.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 1.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 2.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload
execute if score #weapon-number vp.reg1 matches 2.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 2.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 3.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-reload
execute if score #weapon-number vp.reg1 matches 3.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 3.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 4.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-reload
execute if score #weapon-number vp.reg1 matches 4.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 4.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 5.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-reload
execute if score #weapon-number vp.reg1 matches 5.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 5.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 6.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-reload
execute if score #weapon-number vp.reg1 matches 6.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 6.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-reload int 1 run scoreboard players get #reload vp.reg1

execute if score #weapon-number vp.reg1 matches 7.. store result score #reload vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-reload
execute if score #weapon-number vp.reg1 matches 7.. run scoreboard players remove #reload vp.reg1 1
execute if score #weapon-number vp.reg1 matches 7.. if score #reload vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-reload int 1 run scoreboard players get #reload vp.reg1


#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-reload set value 40