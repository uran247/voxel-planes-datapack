#> weapon:rocket/rocket-manager
#
# スコア分向いてる方向にTP
# 実行者：弾体
#
# @within function weapon:tick

#> private
# @private
    #declare tag tracer-lightblue #曳光弾
    #declare tag tracer-orange #曳光弾
    #declare tag tracer-yellow #曳光弾
    #
    #declare score_holder #speedX #実行者のxベクトル
    #declare score_holder #speedY #実行者のyベクトル
    #declare score_holder #speedZ #実行者のzベクトル
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #plane-id #実行者のplane-id

#> within
# @within function weapon:rocket/**
    #declare tag rocket-move-executer #実行者につくタグ
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare tag hit-weapon #武器がヒットしたエンティティにつく


#実行者にタグ付け
tag @s add rocket-move-executer

#元々の向きを保存
data modify storage minecraft:plane-datapack temporary.Rotation set from entity @s Rotation

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

# 実行者を変える前に移動量計算に必要なスコアを取っておく
scoreboard players operation #speedX vp.reg1 = @s vp.speedX
scoreboard players operation #speedY vp.reg1 = @s vp.speedY
scoreboard players operation #speedZ vp.reg1 = @s vp.speedZ
scoreboard players operation #speedX vp.reg1 *= @s vp.speed
scoreboard players operation #speedY vp.reg1 *= @s vp.speed
scoreboard players operation #speedZ vp.reg1 *= @s vp.speed
scoreboard players operation #speedX vp.reg1 /= #10 vp.Num
scoreboard players operation #speedY vp.reg1 /= #10 vp.Num
scoreboard players operation #speedZ vp.reg1 /= #10 vp.Num

data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
scoreboard players operation #pos-y vp.reg1 -= @s vp.fall-speed
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += #speedX vp.reg1
execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += #speedY vp.reg1
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += #speedZ vp.reg1

#弾の衝突判定のときに使うスコアを取っておく
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

# 弾の移動および衝突判定
execute as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] run function weapon:rocket/move

#速度更新
scoreboard players add @s[scores={vp.speed=..48}] vp.speed 2

#落下速度更新
scoreboard players add @s vp.fall-speed 1

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:rocket/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#向き修正
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s anchored eyes positioned ~ ~1.5 ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s anchored eyes positioned ~ ~1.5 ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#タグ削除
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute at @s run tag @s remove rocket-move-executer
