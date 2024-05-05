#> weapon:gun/gun-manager
#
# as @e[tag=gun]
# at @e[tag=gun]
#
# @within function weapon:tick

#> within
# @within
#   weapon:gun/**
#   weapon:util/**
    #declare tag hit-weapon #武器がヒットしたエンティティにつく
    #declare tag gun-move-executer #実行者につくタグ
    #declare score_holder #hit-flag #当たったことのフラグ 1:ブロック命中 2:エンティティ命中

#> private
# @private
    #declare tag lightblue #曳光弾
    #declare tag orange #曳光弾
    #declare tag yellow #曳光弾
    #declare tag lightgreen #曳光弾
    #
    #declare score_holder #pos-x #実行者のx座標
    #declare score_holder #pos-y #実行者のy座標
    #declare score_holder #pos-z #実行者のz座標
    #declare score_holder #x #ブロック命中地点のx座標
    #declare score_holder #y #ブロック命中地点のy座標
    #declare score_holder #z #ブロック命中地点のz座標
    #declare score_holder #plane-id #実行者のplane-id

#実行者にタグ付け
tag @s add gun-move-executer

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#弾の衝突判定のときに使うスコアを取っておく
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id

# 弾の移動および衝突判定
data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.x double 0.01 run scoreboard players get @s vp.speedX
execute store result storage voxel-planes:input input.y double 0.01 run scoreboard players get @s vp.speedY
execute store result storage voxel-planes:input input.z double 0.01 run scoreboard players get @s vp.speedZ
function weapon:gun/move with storage voxel-planes:input input
#execute as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] run function weapon:gun/move

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. at @s run function weapon:gun/damage/damage

#y方向の速度更新
#scoreboard players remove @s speedY 5

#曳光弾ならモデル表示
execute as @s[tag=lightblue,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,components:{"minecraft:potion_contents":{custom_color:65535},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1}}}}]}
execute as @s[tag=lightgreen,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,components:{"minecraft:potion_contents":{custom_color:44167220},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1}}}}]}
execute as @s[tag=orange,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,components:{"minecraft:potion_contents":{custom_color:16747622},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1}}}}]}
execute as @s[tag=yellow,scores={vp.age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,components:{"minecraft:potion_contents":{custom_color:16776960},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1}}}}]}
#execute as @s at @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 20000 1 force

#particle
execute if score #hit-flag vp.reg1 matches 1.. at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 0 1 force

#hitしてたら弾を削除
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#age減算、0になったら削除
scoreboard players add @s vp.age 1
    #tellraw @p [{"score" : {"name":"@s", "objective":"vp.age"}}]
execute store result score #gametime vp.reg1 run time query gametime
execute if score #gametime vp.reg1 > @s[type=armor_stand] vp.max-age run kill @s

#タグ削除
tag @e[tag=hit-weapon,distance=..20] remove hit-weapon
tag @e[tag=hit-on-line,distance=..21] remove hit-on-line
execute at @s run tag @s remove gun-move-executer
