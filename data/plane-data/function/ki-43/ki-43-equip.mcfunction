#> plane-data:ki-43/ki-43-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager
#

#> private
# @private
    #declare score_holder #12p7mm-gun #12.7mm機銃アイテムを装備していることを示す

#装備品チェック
execute store success score #12p7mm-gun vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:ho-103}}}]},distance=..30]

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:gun}}]

#装備
execute unless score #12p7mm-gun vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki43.base.7p7mm
execute if score #12p7mm-gun vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki43.additional.12p7mm

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
