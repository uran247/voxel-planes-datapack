#> weapon:missile/ir-missile-manager
#
# スコア分向いてる方向にTP
# @input
#   as @e[tag=missile-moving,tag=ir-missile]
#   at @e[tag=missile-moving,tag=ir-missile]
#
# @within function weapon:tick

#> within
# @within function weapon:missile/**
    #declare tag ir-missile-target
    #declare tag missile-move-executer #実行者につくタグ
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare score_holder #plane-id #実行者のplane-id
    #declare tag hit-weapon #武器がヒットしたエンティティにつく

#> private
# @private
    #declare tag dummy-sun #実行者につくタグ
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


#実行者にタグ付け
tag @s add missile-move-executer

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#dummy sun初期化
execute positioned 0.0 0.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run tp @e[tag=dummy-sun] 0.0 0.0 0.0
execute positioned 0.0 0.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run kill @e[type=marker,tag=dummy-sun]
execute positioned 0.0 0.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run kill @s
execute positioned 0.0 0.0 0.0 unless entity @e[tag=dummy-sun,distance=..0.01] run summon minecraft:marker 0.0 0.0 0.0 {Tags:[entity-nohit,dummy-entity,dummy-sun],UUID:[I;0,0,0,12]}

#データ取得
function oh_my_dat:please

#dummy sun配置
function weapon:util/set-sun-dummy

#向き変更
        #tellraw @p [{"nbt":"Rotation","entity":"@s"}] 
    #ターゲットが右にいるか左にいるか探索
    data remove storage voxel-planes:input input
    execute store result storage voxel-planes:input input.sight int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.seeker-sight-chord 1000
    execute store result storage voxel-planes:input input.angle int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.missile-target-angle-chord 1000
    function weapon:missile/search-target with storage voxel-planes:input input
    execute as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^1000 ^ ^ if entity @s[distance=..999.9] positioned ^-1000 ^ ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-left
    execute as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^-1000 ^ ^ if entity @s[distance=..999.9] positioned ^1000 ^ ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-right
    execute as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^ ^1000 ^ if entity @s[distance=..999.9] positioned ^ ^-1000 ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-up
    execute as @e[tag=ir-missile-target,distance=..256,limit=1] positioned ^ ^-1000 ^ if entity @s[distance=..999.9] positioned ^ ^1000 ^ run tag @e[tag=missile-move-executer,distance=..0.01] add turn-down
        #execute if entity @s[tag=ir-missile-target] run say ir-missile-target
        #execute if entity @s[tag=turn-left] run say left
        #execute if entity @s[tag=turn-right] run say right
        #execute if entity @s[tag=turn-up] run say up
        #execute if entity @s[tag=turn-down] run say down

    #ターゲットの方向に向けて旋回
    execute if entity @e[tag=ir-missile-target,distance=..256,limit=1] run function weapon:missile/turn-propotional
    #execute as @s[tag=turn-left] store result score #AngY vp.reg1 run data get entity @s Rotation[0] 100
    #execute as @s[tag=turn-right] store result score #AngY vp.reg1 run data get entity @s Rotation[0] 100
    #execute as @s[tag=turn-up] store result score #AngX vp.reg1 run data get entity @s Rotation[1] 100
    #execute as @s[tag=turn-down] store result score #AngX vp.reg1 run data get entity @s Rotation[1] 100
#
    #execute as @s[tag=turn-left] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #AngY vp.reg1 -= @s vp.turn-rate
    #execute as @s[tag=turn-right] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #AngY vp.reg1 += @s vp.turn-rate
    #execute as @s[tag=turn-up] store result entity @s Rotation[1] float 0.01 run scoreboard players operation #AngX vp.reg1 -= @s vp.turn-rate
    #execute as @s[tag=turn-down] store result entity @s Rotation[1] float 0.01 run scoreboard players operation #AngX vp.reg1 += @s vp.turn-rate
        #tellraw @p [{"score":{"objective": "vp.turn-rate","name": "@s"}}]

    execute if entity @e[tag=ir-missile-target,distance=..256,limit=1] run data remove storage voxel-planes:input input
    execute if entity @e[tag=ir-missile-target,distance=..256,limit=1] run data modify storage voxel-planes:input input set from storage voxel-planes:return return
    execute if entity @e[tag=ir-missile-target,distance=..256,limit=1] run execute at @s run function util:scoreturn with storage voxel-planes:input input
        #execute if entity @e[tag=ir-missile-target,distance=..256,limit=1] run tellraw @p [{"nbt":"Tags","entity": "@e[tag=ir-missile-target,distance=..256,limit=1]"}]
        #execute unless entity @e[tag=ir-missile-target,distance=..256,limit=1] run say lost
        #tellraw @p [{"nbt":"input","storage": "voxel-planes:input"}]

    #speedX,Y,Z更新
    execute at @s run function math:vector
        #execute if entity @e[tag=ir-missile-target] run tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

    #reset
    tag @s remove turn-left
    tag @s remove turn-right
    tag @s remove turn-up
    tag @s remove turn-down
    scoreboard players reset #AngY vp.reg1
    scoreboard players reset #AngX vp.reg1
    tag @e[tag=ir-missile-target,distance=..256,limit=1] remove ir-missile-target
        #tellraw @p [{"nbt":"Rotation","entity":"@s"}] 
        #tellraw @p [""]

#移動&ヒット判定
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

        #tellraw @p [{"score" : {"name":"#speedX", "objective":"vp.reg1"}}," ",{"score" : {"name":"#speedY", "objective":"vp.reg1"}}," ",{"score" : {"name":"#speedZ", "objective":"vp.reg1"}}]

    scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

    #元々の向きを保存
    data modify storage minecraft:plane-datapack temporary.Rotation set from entity @s Rotation

    # 弾の移動および衝突判定
    data remove storage voxel-planes:input input
    execute store result storage voxel-planes:input input.x double 0.01 run scoreboard players get #speedX vp.reg1
    execute store result storage voxel-planes:input input.y double 0.01 run scoreboard players get #speedY vp.reg1
    execute store result storage voxel-planes:input input.z double 0.01 run scoreboard players get #speedZ vp.reg1
    execute at @s run function weapon:missile/move with storage voxel-planes:input input

#向き修正
data modify entity @s Rotation set from storage minecraft:plane-datapack temporary.Rotation

#速度更新
execute if score @s vp.speed < @s vp.max-speed run scoreboard players add @s vp.speed 2

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:missile/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s anchored eyes positioned ~ ~ ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s anchored eyes positioned ~ ~ ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#age更新
scoreboard players remove @s vp.age 1

#reset
tag @e[tag=hit-weapon,distance=..26] remove hit-weapon
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute at @s run tag @s remove missile-move-executer
kill @s[scores={vp.age=0}]

