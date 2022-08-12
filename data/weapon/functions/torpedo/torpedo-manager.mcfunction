#> weapon:torpedo/torpedo-manager
#
# 爆弾の落下処理
# 実行者：爆弾
#
# @within function weapon:tick

#> private
# @private
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #x-ang #爆弾のピッチ角度
    #declare score_holder #plane-id #実行者のplane-id

#> within
# @within function weapon:torpedo/**
    #declare tag torpedo-move-executer #実行者につくタグ
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare tag hit-weapon #武器がヒットしたエンティティにつく

#実行者にタグ付け
tag @s add torpedo-move-executer

#元々の向きを保存
data modify storage minecraft:plane-datapack temporary.Rotation set from entity @s Rotation

# 実行者を変える前に移動量計算に必要なスコアを取っておく
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

# 移動&ヒット判定
execute as 0-0-0-0-4 run function weapon:torpedo/move

#y方向の速度更新
scoreboard players remove @s[tag=!sailing] vp.speedY 1

#### ダメージ処理 ####
#ダメージを与える
    #tellraw @p [{"score" : {"name":"#hit-flag", "objective":"vp.reg1"}}]
execute if score #hit-flag vp.reg1 matches 1.. at @s[tag=sailing] run function weapon:torpedo/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#航行中のパーティクル
execute if entity @s[tag=sailing] anchored eyes positioned ^ ^ ^-0.8 run particle bubble_column_up ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10 force

# 水中にいるか判定し航行モードにチェンジ
execute at @s[tag=!sailing] anchored eyes if block ~ ~3 ~ minecraft:water if block ~ ~ ~ minecraft:water run function weapon:torpedo/mode/mode-change

#向き修正
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation
execute if entity @s[tag=!sailing] at @s run tp @s ~ ~ ~ ~ ~0.4
execute if entity @s[tag=!sailing] store result score #x-ang vp.reg1 run data get entity @s Rotation[1] 1
execute if entity @s[tag=!sailing] run scoreboard players remove #x-ang vp.reg1 90
execute if entity @s[tag=!sailing] store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #x-ang vp.reg1
    #tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

#age更新
scoreboard players remove @s vp.age 1

#終了処理
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @s remove torpedo-move-executer
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
kill @s[scores={vp.age=0}]
