#> plane:weapon/change-current-weapon
#
# 現在武器を変更
# plane-weaponを+1、現在のplane-weaponの番号の武器を使用可能か確認、不可だったら更に+1、最大数をオーバーしたら1に戻す
#
# @input
#   executer @e[tag=plane-root]
#
# @within plane:plane-manager

#> private
# @private
    #declare score_holder #weapon-types #飛行機の選択可能武器フラグを示す
    #declare score_holder #weapon-list-num #武器配列数を示す
    #declare score_holder #current-weapon vp.reg1 #選択中武器の配列番号を示す

#配列要素数取得
execute store result score #weapon-list-num vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list

#current index取得
execute store result score #current-weapon vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.current-weapon-index

#indexを1進める
scoreboard players add #current-weapon vp.reg1 1
execute if score #current-weapon vp.reg1 >= #weapon-list-num vp.reg1 run scoreboard players set #current-weapon vp.reg1 0

#index代入
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.current-weapon-index int 1 run scoreboard players get #current-weapon vp.reg1

#current-weapon変更
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:true}].current-weapon
execute if score #current-weapon vp.reg1 matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[0] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[1] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[2] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[3] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[4] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[5] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[6] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 7 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[7] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 8 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[8] merge value {current-weapon:1b}
execute if score #current-weapon vp.reg1 matches 9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[9] merge value {current-weapon:1b}

#tellraw @p [{"score" : {"name":"#current-weapon", "objective":"vp.reg1"}}, {"text":" "},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:true}].type","storage": "oh_my_dat:"}]

#reset
scoreboard players reset @s vp.lockon-time
tag @s remove need-change-weapon

