#榴弾砲の砲弾操作
#入力 entity: @e[tag=he]

#実行者にタグ付け
tag @s add he-executer

#自分と同じID持ちのエンティティにタグ付け
execute as @e[distance=..20,tag=!he-executer] if score @s plane-id = @e[tag=he-executer,distance=..20,limit=1] plane-id run tag @s add he-gunner

#ヒットフラグ初期化
scoreboard players set #hit-flag reg1 0

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
execute store result score #pos-x reg1 run data get entity @s Pos[0] 100
execute store result score #pos-y reg1 run data get entity @s Pos[1] 100
execute store result score #pos-z reg1 run data get entity @s Pos[2] 100
scoreboard players operation #pos-x reg1 += @s speedX
scoreboard players operation #pos-y reg1 += @s speedY
scoreboard players operation #pos-z reg1 += @s speedZ
execute store result entity 0-0-0-0-4 Pos[0] double 0.01 run scoreboard players get #pos-x reg1
execute store result entity 0-0-0-0-4 Pos[1] double 0.01 run scoreboard players get #pos-y reg1
execute store result entity 0-0-0-0-4 Pos[2] double 0.01 run scoreboard players get #pos-z reg1
tp @s ~ ~ ~ facing entity 0-0-0-0-4
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-0-0-4"}] 
#tellraw @p [{"nbt":"Rotation[1]","entity":"@s"}] 
#tellraw @p [{"score" : {"name":"@s", "objective":"age"}}]

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x return matches 50 unless score #y return matches 100 unless score #z return matches 50 run scoreboard players set #hit-flag reg1 1
execute if score #hit-flag reg1 matches 1 run tag 0-0-0-0-9 add hit-he

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute if entity @e[tag=hit-on-line,tag=!he-gunner,tag=!entity-nohit] run scoreboard players set #hit-flag reg1 2
execute if score #hit-flag reg1 matches 2 run tag @e[tag=hit-on-line,tag=!he-gunner,tag=!entity-nohit] add hit-he

#命中していない場合移動予定先へ移動
execute if score #hit-flag reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag reg1 matches 1.. at @e[tag=hit-he,limit=1,sort=nearest] run tp @s ~ ~ ~

#y方向の速度更新
scoreboard players remove @s speedY 5

#particle
execute at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 0 1 force

#### age更新 + ダメージ処理 ####
#hit-flagが立ったらダメージ処理を発生させ砲弾削除
execute if score #hit-flag reg1 matches 1.. run function weapon:howitzer/damage/damage
execute if score #hit-flag reg1 matches 1.. run kill @s

#execute if score #hit-flag reg1 matches 1 run say block
#execute if score #hit-flag reg1 matches 2 run say entity

#終了処理
tag @s remove he-executer
tag @e[tag=he-executer] remove he-executer
tag @e[tag=hit-on-line] remove hit-on-line
tag @e[tag=hit-he] remove hit-he

#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0
