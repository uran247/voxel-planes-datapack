#> plane-data:tbf/tbf-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #$ITEM_TYPE #$ITEM_TYPEを入力

#装備品チェック
execute store success score #$ITEM_TYPE vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:$ITEM_TYPE}}]},distance=..30]

#排他装備品判定

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #$ITEM_TYPE vp.reg1 matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:$WEAPON_TYPE}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon tbf.base.$WEAPON_TYPE
execute if score #$ITEM_TYPE vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:$WEAPON_TYPE}}].data.$WEAPON_TYPEs append from storage voxel-planes:weapon tbf.additional.$ADDITIONAL_WEAPON_TYPE[]

#弾数変更
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets

#不要装備削除
execute if entity @e[tag=target-parts,tag=plane-bomb,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]
execute if entity @e[tag=target-parts,tag=plane-rocket,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]
