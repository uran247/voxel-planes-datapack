#> weapon:dropping/dropping-manager
#
# as @e[tag=dropping]
# at @e[tag=dropping]
#
# @within function weapon:tick

#> private
# @private
    #declare tag bomb-move-executer #実行者につくタグ
    #
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #x-ang #爆弾のピッチ角度
    #declare score_holder #plane-id #実行者のplane-id

#> within
# @within function weapon:dropping/**
    #declare tag bomb-move-executer #実行者につくタグ
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare tag hit-weapon #武器がヒットしたエンティティにつく


#実行者にタグ付け
tag @s add bomb-move-executer

#元々の向きを保存
data modify storage minecraft:plane-datapack temporary.Rotation set from entity @s Rotation

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#爆弾の衝突判定のときに使うスコアを取っておく
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

#移動&ヒット判定
data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.x double 0.01 run scoreboard players get @s vp.speedX
execute store result storage voxel-planes:input input.y double 0.01 run scoreboard players get @s vp.speedY
execute store result storage voxel-planes:input input.z double 0.01 run scoreboard players get @s vp.speedZ
function weapon:dropping/move with storage voxel-planes:input input
    #execute if entity @s[scores={vp.age=1200}] run tellraw @p [{"nbt":"Pos","entity": "@s"}]

#y方向の速度更新
scoreboard players remove @s vp.speedY 1

#ダメージを与える/地形破壊
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:dropping/damage/damage
    #tellraw @p [{"score" : {"name":"#hit-flag", "objective":"vp.reg1"}}]
execute if score #destroy-terrain vp.config matches 1.. if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:dropping/damage/destroy-terrain
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#向き修正
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation
execute at @s run tp @s ~ ~ ~ ~ ~0.4
    #tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

#age更新
scoreboard players remove @s vp.age 1

#終了処理
execute if score #hit-flag vp.reg1 matches 1.. run tag @e[tag=hit-weapon] remove hit-weapon
tag @s remove bomb-move-executer
kill @s[scores={vp.age=0}]
