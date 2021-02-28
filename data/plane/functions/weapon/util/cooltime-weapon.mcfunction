#> plane:weapon/util/cooltime-weapon
#
# @input
#   executer @e[tag=plane-root]
#   score #weapon-number vp.reg1 #武器種類数
#
# @within function plane:weapon/weapon-manager

#cooltime減算
execute if score #weapon-number vp.reg1 matches 1.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 1.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 1.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 2.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 2.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 2.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 3.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 3.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 3.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 4.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 4.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 4.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 5.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 5.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 5.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 6.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 6.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 6.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1

execute if score #weapon-number vp.reg1 matches 7.. store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-cooltime
execute if score #weapon-number vp.reg1 matches 7.. run scoreboard players remove #cooltime vp.reg1 1
execute if score #weapon-number vp.reg1 matches 7.. if score #cooltime vp.reg1 matches 0.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6].data.current-cooltime int 1 run scoreboard players get #cooltime vp.reg1
