#爆弾の落下処理
#実行者：爆弾

#実行者にタグ付け
tag @s add bomb-move-executer

#自分と同じID持ちのエンティティにタグ付け
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[distance=..20] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add bomber

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
execute store result storage plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos
tp @s ~ ~ ~ facing entity 0-0-0-0-4

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-9 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!bomber,tag=!entity-nohit] unless entity @e[tag=bomber,distance=..3] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run tag @e[tag=hit-on-line,tag=!bomber,tag=!entity-nohit] add hit-weapon

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-weapon,limit=1,sort=nearest] run tp @s ~ ~ ~

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
tag @e[tag=hit-weapon,distance=..20] remove hit-weapon
tag @e[tag=bomber,distance=..40] remove bomber
tag @s remove bomb-move-executer
tag @e[tag=hit-on-line] remove hit-on-line
kill @s[scores={vp.age=0}]

#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0
