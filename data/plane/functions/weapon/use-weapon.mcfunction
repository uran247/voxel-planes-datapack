#> plane:weapon/use-weapon
#
# @input
#   executer @e[tag=plane-root]
# 武器を使用
#
# @within function plane:weapon/weapon-manager
    #declare score_holder #ammunition #残弾数を示す
    #declare score_holder #cooltime #残弾数を示す

#current weaponの残弾、cooltime取得
execute store result score #ammunition vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition
execute store result score #cooltime vp.reg1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-cooltime

#選択に応じて武器ファンクション実行
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:gun} if score #ammunition vp.reg1 matches 1.. if score #cooltime vp.reg1 matches ..0 at @s run function plane:weapon/use-weapon/use-gun
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:bomb} if score #ammunition vp.reg1 matches 1.. at @s run function plane:weapon/use-weapon/use-bomb
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:rocket} if score #ammunition vp.reg1 matches 1.. at @s run function plane:weapon/use-weapon/use-rocket

#右クリックリセット
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:gun,current-ammunition:-1} run scoreboard players set @p vp.rightClick 0
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:bomb} run scoreboard players set @p vp.rightClick 0
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data{type:rocket} run scoreboard players set @p vp.rightClick 0

#武器使用フラグ削除
tag @s remove need-use-weapon