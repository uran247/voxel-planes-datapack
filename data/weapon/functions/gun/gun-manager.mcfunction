#> weapon:gun/gun-manager
#
# 銃弾の操作
# 実行者：弾体
#
# @within function weapon:tick

#> within
# @within
#   weapon:gun/**
#   weapon:util/**
    #declare tag hit-weapon #武器がヒットしたエンティティにつく

#> private
# @private
    #declare tag gun-move-executer #実行者につくタグ
    #declare tag lightblue #曳光弾
    #declare tag orange #曳光弾
    #declare tag yellow #曳光弾
    #
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中
    #declare score_holder #plane-id #実行者のplane-id

#実行者にタグ付け
tag @s add gun-move-executer

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
execute unless entity 0-0-0-0-4 run summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block,axis,block-detector,"4"],UUID:[I;0,0,0,4],Invulnerable:1b}
tp 0-0-0-0-4 ~ ~ ~ ~ ~
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score #pos-x vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score #pos-y vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score #pos-z vp.reg1 run data get storage minecraft:plane-datapack temporary.Pos[2] 100
execute store result storage plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += @s vp.speedX
execute store result storage plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += @s vp.speedY
execute store result storage plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += @s vp.speedZ
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos
tp @s ~ ~ ~ facing entity 0-0-0-0-4

#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-0-0-4"}] 

#移動予定先までの間にブロックがあるか判定
execute at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-9 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
function weapon:util/check-entity
execute if entity @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute if score #hit-flag vp.reg1 matches 2 as @e[tag=hit-on-line,tag=!entity-nohit,distance=..20] unless score @s vp.plane-id = #plane-id vp.reg1 run tag @s add hit-weapon
execute if score #hit-flag vp.reg1 matches 2 unless entity @e[tag=hit-weapon,distance=..20] run scoreboard players set #hit-flag vp.reg1 0

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 positioned as 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-weapon,distance=..20,sort=nearest,limit=1] run tp @s ~ ~ ~

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 2 run function weapon:gun/damage/damage

#y方向の速度更新
#scoreboard players remove @s speedY 5

#曳光弾ならモデル表示
execute as @s[tag=lightblue,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:65535,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
execute as @s[tag=orange,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16747622,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
execute as @s[tag=yellow,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16776960,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
#execute as @s at @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 20000 1 force

#particle
execute if score #hit-flag vp.reg1 matches 1.. at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 0 1 force

#hitしてたら弾を削除
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#age減算、0になったら削除
scoreboard players add @s vp.age 1
execute if score @s[type=armor_stand] vp.age > @s vp.max-age run kill @s
#tellraw @p [{"score" : {"name":"@s", "objective":"age"}}]

#タグ削除
tag @e[tag=hit-weapon] remove hit-weapon
tag @e[tag=hit-on-line] remove hit-on-line
execute at @s run tag @s remove gun-move-executer

#エンティティ返却
tp 0-0-0-0-4 0.0 1.0 0.0
tp 0-0-0-0-9 0.0 1.0 0.0

