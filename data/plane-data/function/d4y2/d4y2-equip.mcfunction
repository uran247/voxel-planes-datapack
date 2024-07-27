#> plane-data:d4y2/d4y2-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #rocket #ロケットアイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の武器を消すべきであるとのフラグ

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:500kg-bomb}}}]},distance=..30]
execute store success score #rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:aa-rocket}}}]},distance=..30]

#ストレージリセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] set from storage voxel-planes:weapon d4y2.base.bomb
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #500kg vp.reg1 matches 1.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs[{kind:250kg}]
execute if score #500kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon d4y2.additional.500kg[]
execute if score #rocket vp.reg1 matches 1.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs[{kind:60kg}]
execute if score #rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon d4y2.base.rocket
execute if score #rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets append from storage voxel-planes:weapon d4y2.additional.aa-rocket[]

#弾数変更
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs

#不要爆弾削除
execute unless score #500kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=500kg,tag=normal,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #500kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=250kg,tag=normal,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute unless score #rocket vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=plane-rocket,tag=normal,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]
execute if score #rocket vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=60kg,tag=normal,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
