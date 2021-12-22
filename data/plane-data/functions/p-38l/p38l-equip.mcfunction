#> plane-data:p-38l/p38l-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg-bomb #500kg-bombを入力
    #declare score_holder #250kg-bomb 
    #declare score_holder #ag-rocket 

#装備品チェック
execute store success score #500kg-bomb vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]
execute store success score #250kg-bomb vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:250kg-bomb}}]},distance=..30]
execute store success score #ag-rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ag-rocket}}]},distance=..30]

#排他装備品判定
execute if score #500kg-bomb vp.reg1 matches 1.. run scoreboard players reset #250kg-bomb vp.reg1

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #500kg-bomb vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon p38l.base.bomb
execute if score #500kg-bomb vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon p38l.additional.1000lb[]
execute if score #250kg-bomb vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon p38l.base.bomb
execute if score #250kg-bomb vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon p38l.additional.500lb[]
execute if score #ag-rocket vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon p38l.base.rocket
execute if score #ag-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets append from storage voxel-planes:weapon p38l.additional.ag-rocket[]

#弾数変更
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets

#不要装備削除
execute if entity @e[tag=target-parts,tag=plane-bomb,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute if entity @e[tag=target-parts,tag=plane-rocket,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]
