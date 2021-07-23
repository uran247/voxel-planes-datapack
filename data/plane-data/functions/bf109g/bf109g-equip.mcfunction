#> plane-data:bf109g/bf109g-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare tag plane-init
    #declare score_holder #250kg #1000lb爆弾アイテムを装備していることを示す
    #declare score_holder #aa-rocket #ag-rocket爆弾アイテムを装備していることを示す
    #declare score_holder #gunpod #gunpodを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #250kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:250kg-bomb}}]},distance=..30]
#execute store success score #aa-rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ag-rocket}}]},distance=..30]
execute store success score #gunpod vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:mg151}}]},distance=..30]

#ストレージリセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}]
#data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{size:20mm}}]

#weapon-listに武器データアペンド
execute if score #250kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon bf109g.base.bomb
execute if score #250kg vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs append from storage voxel-planes:weapon bf109g.additional.250kg[]
#execute if score #aa-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon bf109g.base.rocket
#execute if score #aa-rocket vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets append from storage voxel-planes:weapon bf109g.additional.ag-rocket[]
execute unless score #gunpod vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon bf109g.base.20mm
execute if score #gunpod vp.reg1 matches 1.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon bf109g.additional.20mm

#gunpod装着
execute if score #gunpod vp.reg1 matches 1.. unless entity @e[type=armor_stand,tag=target-parts,tag=plane-gunpod] run summon armor_stand ~ ~ ~ {Tags:["plane-gunpod","bf109g",plane-init,plane,has-model,entity-nohit,target-parts,position-processed],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:143,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
execute if score #gunpod vp.reg1 matches 1.. run scoreboard players operation @e[type=armor_stand,tag=plane-init,tag=plane-gunpod,distance=..1] vp.plane-id = @s vp.plane-id
execute if score #gunpod vp.reg1 matches 1.. run scoreboard players set @e[type=armor_stand,tag=plane-init,tag=plane-gunpod,distance=..1] vp.weight 200
execute if score #gunpod vp.reg1 matches 1.. run tag @e[type=armor_stand,tag=plane-init,tag=plane-gunpod,distance=..1] remove plane-init

#装備済み爆弾/gunpod削除
execute unless score #250kg vp.reg1 matches 1.. if entity @e[type=armor_stand,tag=target-parts,tag=250kg,tag=normal] run kill @e[tag=target-parts,tag=plane-bomb]
execute unless score #aa-rocket vp.reg1 matches 1.. if entity @e[type=armor_stand,tag=target-parts,tag=plane-rocket] run kill @e[tag=target-parts,tag=plane-rocket]
execute unless score #gunpod vp.reg1 matches 1.. if entity @e[type=armor_stand,tag=target-parts,tag=plane-gunpod] run kill @e[type=armor_stand,tag=target-parts,tag=plane-gunpod]

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
