#> weapon:dropping/dropping-manager
#
# 爆弾の落下処理
# 実行者：爆弾
#
# @within function weapon:tick

#> private
# @private
    #declare tag bomb-move-executer #実行者につくタグ
    #declare tag hit-weapon #武器がヒットしたエンティティにつく
    #
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #x-ang #爆弾のピッチ角度
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare score_holder #plane-id #実行者のplane-id


#実行者にタグ付け
tag @s add bomb-move-executer

# ブロックチェッカー初期化
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run tp @e[tag=block-checker] 0.0 1.0 0.0
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker]}
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run kill @s

#移動と判定のため一時的に向きを90度回転
execute at @s run tp @s ~ ~ ~ ~-90 ~

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0
#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ
execute positioned 0.0 1.0 0.0 as @e[tag=block-checker,distance=..0.01,sort=nearest,limit=1] run data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos
tp @s ~ ~ ~ facing entity @e[tag=block-checker,distance=..26,sort=nearest,limit=1]

#移動予定先までの間にブロックがあるか判定
execute as @s at @e[tag=block-checker,distance=..26,sort=nearest,limit=1] run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag @e[tag=block-checker,distance=..26,sort=nearest,limit=1] add hit-weapon

#移動予定先までの間にエンティティがいるか判定
function weapon:util/check-entity
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 at @e[tag=block-checker,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~

#y方向の速度更新
scoreboard players remove @s vp.speedY 1

#### ダメージ処理 ####
#ダメージを与える
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:dropping/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#向き修正
execute at @s run tp @s ~ ~ ~ ~90 ~0.4
execute store result score #x-ang vp.reg1 run data get entity @s Rotation[1] 1
scoreboard players remove #x-ang vp.reg1 90
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #x-ang vp.reg1
#tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

#age更新
scoreboard players remove @s vp.age 1

#終了処理
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @s remove bomb-move-executer
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
kill @s[scores={vp.age=0}]

#エンティティ返却
tp @e[tag=block-checker,distance=..26] 0 1 0
