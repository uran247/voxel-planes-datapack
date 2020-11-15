#爆弾の落下処理
#実行者：砲弾
#対空砲の砲弾操作
#入力 entity: @e[tag=aagun]

#実行者にタグ付け
tag @s add aagun-move-executer

#自分と同じID持ちのエンティティにタグ付け
execute as @e[distance=..20,tag=!aagun-move-executer] if score @s vp.plane-id = @e[tag=aagun-move-executer,distance=..20,limit=1] vp.plane-id run tag @s add aaguner

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
execute store result score #pos-x vp.reg1 run data get entity @s Pos[0] 100
execute store result score #pos-y vp.reg1 run data get entity @s Pos[1] 100
execute store result score #pos-z vp.reg1 run data get entity @s Pos[2] 100
execute store result storage plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos
tp @s ~ ~ ~ facing entity 0-0-0-0-4

#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-0-0-4"}] 
#tellraw @p [{"score" : {"name":"@s", "objective":"age"}}]

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-9 add hit-aagun

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!aaguner,tag=!entity-nohit] unless entity @e[tag=aaguner,distance=..3] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run tag @e[tag=hit-on-line,tag=!aaguner,tag=!entity-nohit] add hit-aagun

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-aagun,limit=1,sort=nearest] run tp @s ~ ~ ~

#y方向の速度更新
scoreboard players remove @s vp.speedY 5

#particle
execute at @s run particle minecraft:dust 0 0 0 1000 ~ ~2 ~ 0.2 0.2 0.2 1 3 force
#tellraw @p [{"score" : {"name":"#pos-y", "objective":"vp.reg1"}}]

#### age更新 + ダメージ処理 ####
#y座標がfuse-heightを超えたらhit-flagをたてる
execute if score #pos-y vp.reg1 > @s fuse-height run scoreboard players set #hit-flag vp.reg1 3
#hit-flagが立ったらダメージ処理を発生させ砲弾削除
execute if score #hit-flag vp.reg1 matches 1.. run function weapon:aagun/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#終了処理
tag @e[tag=aaguner,distance=..20] remove aaguner
tag @s remove aagun-move-executer
tag @e[tag=aagun-move-executer] remove aagun-move-executer
tag @e[tag=hit-on-line] remove hit-on-line
tag @e[tag=hit-aagun] remove hit-aagun

#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0
