#> plane-data:spitfiremkix/spitfiremkix-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager
#

#> within
# @within
#   plane-data:spitfiremkix/spitfiremkix-equip
#   plane-data:spitfiremkix/spitfiremkix-weapon-manager
       #declare tag mg151 #mg151機銃を装備していることを示す
       #declare tag 250kg #100kg通常爆弾を装備していることを示す

#> private
# @private
    #declare score_holder #100kg #100kg爆弾アイテムを装備していることを示す
    #declare score_holder #mg151 #mg151アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #100kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{components:{"minecraft:custom_data":{item-type:100kg-bomb}}}]},distance=..30]

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]

#装備
execute if score #100kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon spitfiremkix.base.bomb
execute if score #100kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon spitfiremkix.additional.250lb[]

#装備済み爆弾削除
execute unless score #100kg vp.reg1 matches 1.. if entity @e[tag=target-parts,tag=250lb,tag=plane-bomb,distance=..32] run kill @e[tag=target-parts,tag=plane-bomb]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
