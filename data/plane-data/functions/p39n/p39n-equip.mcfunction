#> plane-data:p39n/p39n-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #250kg-bomb #250kg-bombを入力

#装備品チェック
execute store success score #250kg-bomb vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:250kg-bomb}}}]},distance=..30]

#排他装備品判定

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #250kg-bomb vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon p39n.base.bomb
execute if score #250kg-bomb vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon p39n.additional.500lb[]

#弾数変更
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs

#不要装備削除
execute if entity @e[tag=target-parts,tag=plane-bomb,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
