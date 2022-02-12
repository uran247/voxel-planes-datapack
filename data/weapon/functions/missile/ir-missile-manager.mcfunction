#> weapon:missile/ir-missile-manager
#
# スコア分向いてる方向にTP
# 実行者：弾体
#
# @within function weapon:tick

#> within
# @within function weapon:missile/**
    #declare tag ir-missile-target

#> private
# @private
    #declare tag missile-move-executer #実行者につくタグ
    #declare tag hit-weapon #武器がヒットしたエンティティにつく
    #declare tag turn-left #ミサイルがどちらに曲がるか
    #declare tag turn-right #ミサイルがどちらに曲がるか
    #declare tag turn-up  #ミサイルがどちらに曲がるか
    #declare tag turn-down #ミサイルがどちらに曲がるか
    #declare score_holder #AngY #新しいミサイルの向き
    #declare score_holder #AngX #新しいミサイルの向き
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
tag @s add missile-move-executer

# ブロックチェッカー初期化
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run tp @e[tag=block-checker] 0.0 1.0 0.0
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run kill @e[type=marker,tag=block-checker]
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker]}
execute positioned 0.0 1.0 0.0 unless entity @e[tag=block-checker,distance=..0.01] run kill @s

#データ取得
function oh_my_dat:please

#向き変更
    #ターゲットが右にいるか左にいるか探索
    execute rotated ~-90 ~ run function weapon:missile/search-target
    execute rotated ~-90 ~ as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^1000 ^ ^ if entity @s[distance=..999.9] positioned ^-1000 ^ ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-left
    execute rotated ~-90 ~ as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^-1000 ^ ^ if entity @s[distance=..999.9] positioned ^1000 ^ ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-right
    execute rotated ~-90 ~ as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^ ^1000 ^ if entity @s[distance=..999.9] positioned ^ ^-1000 ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-up
    execute rotated ~-90 ~ as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^ ^-1000 ^ if entity @s[distance=..999.9] positioned ^ ^1000 ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-down

    #ターゲットの方向に向けて旋回
    execute as @s[tag=turn-left] store result score #AngY vp.reg1 run data get entity @s Rotation[0] 100
    execute as @s[tag=turn-right] store result score #AngY vp.reg1 run data get entity @s Rotation[0] 100
    execute as @s[tag=turn-up] store result score #AngX vp.reg1 run data get entity @s Rotation[1] 100
    execute as @s[tag=turn-down] store result score #AngX vp.reg1 run data get entity @s Rotation[1] 100

    execute as @s[tag=turn-left] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #AngY vp.reg1 -= @s vp.turn-rate
    execute as @s[tag=turn-right] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #AngY vp.reg1 += @s vp.turn-rate
    execute as @s[tag=turn-up] store result entity @s Rotation[1] float 0.01 run scoreboard players operation #AngX vp.reg1 -= @s vp.turn-rate
    execute as @s[tag=turn-down] store result entity @s Rotation[1] float 0.01 run scoreboard players operation #AngX vp.reg1 += @s vp.turn-rate

    #speedX,Y,Z更新
    execute at @s run tp @s ~ ~ ~ ~-90 ~
    execute at @s run function math:vector

    #reset
    tag @s remove turn-left
    tag @s remove turn-right
    scoreboard players reset #AngY vp.reg1
    scoreboard players reset #AngX vp.reg1
    tag @e[tag=ir-missile-target,distance=..256,limit=1] remove ir-missile-target

#移動&ヒット判定
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
    execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += #speedX vp.reg1
    execute store result storage minecraft:plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += #speedY vp.reg1
    execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += #speedZ vp.reg1
    execute positioned 0.0 1.0 0.0 as @e[tag=block-checker,distance=..0.01,sort=nearest,limit=1] run data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos

    tp @s ~ ~ ~ facing entity @e[tag=block-checker,distance=..26,sort=nearest,limit=1]

    #ヒットフラグ初期化
    scoreboard players set #hit-flag vp.reg1 0

    #移動予定先までの間にブロックがあるか判定
    execute as @s at @e[tag=block-checker,distance=..26,sort=nearest,limit=1] run function weapon:util/check-block
    execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run tag @e[tag=block-checker,distance=..26,sort=nearest,limit=1] add hit-weapon

    #移動予定先までの間にエンティティがいるか判定
    execute as @s at @s run function weapon:util/check-entity-proximity
    scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
    execute at @s as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon

    #エンティティとブロックどちらにあたったか判定
    execute at @s as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] if entity @s[tag=block-checker] run scoreboard players set #hit-flag vp.reg1 1
    execute at @s as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] if entity @s[tag=hit-on-line] run scoreboard players set #hit-flag vp.reg1 2

    #命中していない場合移動予定先へ移動
    execute if score #hit-flag vp.reg1 matches 0 positioned as @e[tag=block-checker,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

    #ブロックに命中してた場合block-checkerのところに移動
    execute if score #hit-flag vp.reg1 matches 1 positioned as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-90 ~

    #エンティティに命中してた場合進路上のエンティティの1番近くに移動
    execute at @s if score #hit-flag vp.reg1 matches 2 positioned as @e[tag=hit-weapon,distance=..26,sort=nearest,limit=1] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 rotated as @s run tp @s ~ ~ ~ ~-90 ~

#速度更新
execute if score @s vp.speed < @s vp.max-speed run scoreboard players add @s vp.speed 2

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:missile/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#age更新
scoreboard players remove @s vp.age 1

#reset
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute at @s run tag @s remove missile-move-executer
kill @s[scores={vp.age=0}]

#エンティティ返却
tp @e[tag=block-checker,distance=..26] 0.0 1.0 0.0

