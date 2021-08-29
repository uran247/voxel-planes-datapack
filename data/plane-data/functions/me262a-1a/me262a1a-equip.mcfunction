#> plane-data:me262a-1a/me262a1a-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #aa-rocket #aa-rocket爆弾アイテムを装備していることを示す


#装備品チェック
execute store success score #aa-rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:aa-rocket}}]},distance=..30]

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]

#weapon-listに武器データアペンド
execute if score #aa-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon me262a1a.base.rocket
execute if score #aa-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets append from storage voxel-planes:weapon me262a1a.additional.aa-rocket[]

#装備済み爆弾削除
execute unless score #aa-rocket vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=plane-rocket,distance=..32] run kill @e[tag=target-parts,tag=plane-rocket]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
