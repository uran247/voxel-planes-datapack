#> plane-data:seafuryfb11/seafuryfb11-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #ag-rocket #ag-rocket爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:500kg-bomb}}}]},distance=..30]
execute store success score #ag-rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:ag-rocket}}}]},distance=..30]
execute if score #ag-rocket vp.reg1 matches 1.. run scoreboard players set #500kg vp.reg1 0

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #500kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon seafuryfb11.base.bomb
execute if score #500kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon seafuryfb11.additional.1000lb[]
execute if score #ag-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon seafuryfb11.base.rocket
execute if score #ag-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets append from storage voxel-planes:weapon seafuryfb11.additional.ag-rocket[]

#装備済み爆弾削除
execute unless score #500kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=1000lb,tag=normal,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute unless score #ag-rocket vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=plane-rocket,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
