#> weapon:rocket/rocket-manager
#
# スコア分向いてる方向にTP
# 実行者：弾体
#
# @within function weapon:tick

#> private
# @private
    #declare tag rocket-move-executer #実行者につくタグ
    #declare tag hit-weapon #武器がヒットしたエンティティにつく
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
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare score_holder #plane-id #実行者のplane-id


#実行者にタグ付け
tag @s add rocket-move-executer

# ブロックチェッカー初期化
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run tp @e[tag=block-checker] 0.0 1.0 0.0
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker]}
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run kill @s

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
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
execute positioned 0.0 1.0 0.0 as @e[tag=block-checker,distance=..0.01,sort=nearest,limit=1] run data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos

tp @s ~ ~ ~ facing entity @e[tag=block-checker,distance=..26,sort=nearest,limit=1]
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"@e[tag=block-checker,distance=..26,sort=nearest,limit=1]"}] 

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
execute if score #hit-flag vp.reg1 matches 0 positioned as @e[tag=block-checker,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-90 ~

#速度更新
scoreboard players add @s[scores={vp.speed=..48}] vp.speed 2

#落下速度更新
scoreboard players add @s vp.fall-speed 1

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. run function weapon:rocket/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#タグ削除
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute at @s run tag @s remove rocket-move-executer

#エンティティ返却
tp @e[tag=block-checker,distance=..26] 0 1 0

