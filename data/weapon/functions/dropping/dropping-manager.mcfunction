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

# 実行者を変える前に移動量計算に必要なスコアを取っておく
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ
    #tellraw @p [{"score" : {"name":"@s", "objective":"vp.speedY"}}]

#爆弾の衝突判定のときに使うスコアを取っておく
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

#移動&ヒット判定
execute as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] run function weapon:dropping/move

#y方向の速度更新
scoreboard players remove @s vp.speedY 1

#ダメージを与える/地形破壊
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:dropping/damage/damage
execute if score #destroy-terrain vp.config matches 1.. if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:dropping/damage/destroy-terrain
execute if score #hit-flag vp.reg1 matches 1.. on passengers run kill @s
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#向き修正
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation
execute at @s run tp @s ~ ~ ~ ~ ~0.4
execute on passengers run tp @s ~ ~ ~ ~ ~0.4
#execute store result score #x-ang vp.reg1 run data get entity @s Rotation[1] 1
#scoreboard players remove #x-ang vp.reg1 90
#execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #x-ang vp.reg1
#tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

#age更新
scoreboard players remove @s vp.age 1

#終了処理
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @s remove bomb-move-executer
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute as @s[scores={vp.age=0}] on passengers run kill @s
kill @s[scores={vp.age=0}]
