#爆弾の落下処理
#実行者：爆弾

#実行者にタグ付け
tag @s add bomb-move-executer

#自分と同じID持ちのエンティティにタグ付け
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[distance=..20] if score @s plane-id = #plane-id reg1 run tag @s add bomber

#移動と判定のため一時的に向きを90度回転
execute at @s run tp @s ~ ~ ~ ~-90 ~

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
execute store result entity 0-0-4-0-0 Pos[0] double 0.01 run scoreboard players get #pos-x reg1
execute store result entity 0-0-4-0-0 Pos[1] double 0.01 run scoreboard players get #pos-y reg1
execute store result entity 0-0-4-0-0 Pos[2] double 0.01 run scoreboard players get #pos-z reg1
tp @s ~ ~ ~ facing entity 0-0-4-0-0
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-4-0-0"}] 

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-4-0-0 run function weapon:util/check-block
execute unless score #x return matches 50 unless score #y return matches 100 unless score #z return matches 50 run scoreboard players set #hit-flag reg1 1
execute if score #hit-flag reg1 matches 1 run tag 0-0-9-0-0 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!bomber,tag=!entity-nohit] unless entity @e[tag=bomber,distance=..3] run scoreboard players set #hit-flag reg1 2
execute if score #hit-flag reg1 matches 2 run tag @e[tag=hit-on-line,tag=!bomber,tag=!entity-nohit] add hit-weapon

#命中していない場合移動予定先へ移動
execute if score #hit-flag reg1 matches 0 at 0-0-4-0-0 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag reg1 matches 1.. at @e[tag=hit-weapon,limit=1,sort=nearest] run tp @s ~ ~ ~

#y方向の速度更新
scoreboard players remove @s speedY 1

#### ダメージ処理 ####
#ダメージを与える
execute if score #hit-flag reg1 matches 1.. at @s run function weapon:dropping/damage/damage
execute if score #hit-flag reg1 matches 1.. run kill @s
#execute if score #hit-flag reg1 matches 1.. run say hit


#向き修正
execute at @s run tp @s ~ ~ ~ ~90 ~0.4
execute store result score #x-ang reg1 run data get entity @s Rotation[1] 1
scoreboard players remove #x-ang reg1 90
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #x-ang reg1
#tellraw @p [{"nbt":"Rotation","entity":"@s"}] 

#age更新
scoreboard players remove @s age 1

#終了処理
tag @e[tag=hit-weapon,distance=..20] remove hit-weapon
tag @e[tag=bomber,distance=..40] remove bomber
tag @s remove bomb-move-executer
tag @e[tag=hit-on-line] remove hit-on-line
kill @s[scores={age=0}]

#エンティティ返却
tp 0-0-4-0-0 0 1 0
tp 0-0-9-0-0 0 1 0
