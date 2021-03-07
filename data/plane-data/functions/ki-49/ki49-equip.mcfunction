#> plane-data:ki-49/ki49-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ
    #declare score_holder #remove-500kg #800kg爆弾を外したことを示す
    #declare score_holder #remove-250kg #250kg爆弾を外したことを示す

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]

#ストレージリセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] set from storage voxel-planes:weapon ki49.base.bomb

#weapon-listに武器データアペンド
execute if score #500kg vp.reg1 matches 1.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs[{weight:250kg}]
execute if score #500kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon ki49.additional.500kg[]

#弾数変更
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs

#不要爆弾削除
execute unless score #500kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=500kg,tag=normal] run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #500kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=250kg,tag=normal] run kill @e[tag=target-parts,tag=plane-bomb]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力

