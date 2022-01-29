#> plane-data:f86f/f86f-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #ir-missile

#装備品チェック
execute store success score #ir-missile vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ir-missile}}]},distance=..30]

#排他装備品判定

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}]

#weapon-listに武器データアペンド
execute if score #ir-missile vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon f86f.base.missile
execute if score #ir-missile vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}].data.missiles append from storage voxel-planes:weapon f86f.additional.missile[]

#弾数変更
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}].data.missiles
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:missile}}].data.missiles

#不要装備削除
execute if entity @e[tag=target-parts,tag=plane-bomb,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute if entity @e[tag=target-parts,tag=plane-rocket,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]
execute if entity @e[tag=target-parts,tag=plane-missile,distance=..32] run kill @e[tag=target-parts,tag=plane-missile]
