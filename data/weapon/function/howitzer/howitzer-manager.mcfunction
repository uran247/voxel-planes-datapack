#榴弾砲の砲弾操作
#入力 entity: @e[tag=he]

#実行者にタグ付け
tag @s add he-executer

#自分と同じID持ちのエンティティにタグ付け
execute as @e[distance=..20,tag=!he-executer] if score @s vp.plane-id = @e[tag=he-executer,distance=..20,limit=1] vp.plane-id run tag @s add he-gunner

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
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos
tp @s ~ ~ ~ facing entity 0-0-0-0-4

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-9 add hit-he

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute if entity @e[tag=hit-on-line,tag=!he-gunner,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run tag @e[tag=hit-on-line,tag=!he-gunner,tag=!entity-nohit,distance=..20] add hit-he

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-he,distance=..26,sort=nearest,limit=1] run tp @s ~ ~ ~

#y方向の速度更新
scoreboard players remove @s vp.speedY 5

#particle
execute at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 0 1 force

#### age更新 + ダメージ処理 ####
#hit-flagが立ったらダメージ処理を発生させ砲弾削除
execute if score #hit-flag vp.reg1 matches 1.. run function weapon:howitzer/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#終了処理
tag @s remove he-executer
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
tag @e[tag=hit-he,distance=..26] remove hit-he

#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0
