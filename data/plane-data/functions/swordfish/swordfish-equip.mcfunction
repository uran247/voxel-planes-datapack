#> plane-data:swordfish/swordfish-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #torpedo #torpedo爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の武器を消すべきであるとのフラグ

#装備品チェック
execute store success score #torpedo vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:torpedo}}]},distance=..30]

#ストレージリセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] set from storage voxel-planes:weapon swordfish.base.bomb
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}]

#weapon-listに武器データアペンド
execute if score #torpedo vp.reg1 matches 1.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
execute if score #torpedo vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}].data.torpedos append from storage voxel-planes:weapon swordfish.additional.torpedo[]

#弾数変更
execute unless score #torpedo vp.reg1 matches 1.. run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute unless score #torpedo vp.reg1 matches 1.. run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if score #torpedo vp.reg1 matches 1.. run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}].data.torpedos
execute if score #torpedo vp.reg1 matches 1.. run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:torpedo}}].data.torpedos

#不要爆弾削除
execute unless score #torpedo vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=plane-torpedo,tag=normal] run kill @e[tag=target-parts,tag=plane-torpedo]
execute if score #torpedo vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=plane-bomb] run kill @e[tag=target-parts,tag=plane-bomb]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
