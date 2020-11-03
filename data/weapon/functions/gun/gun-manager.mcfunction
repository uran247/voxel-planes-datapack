#スコア分向いてる方向にTP
#実行者：弾体

#実行者にタグ付け
tag @s add gun-move-executer

#自分と同じID持ちのエンティティでno-hit無しに当たらないようにタグ付け
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[distance=..20,tag=!entity-nohit] if score @s plane-id = #plane-id reg1 run tag @s add gunner

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

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x return matches 50 unless score #y return matches 100 unless score #z return matches 50 run scoreboard players set #hit-flag reg1 1
execute if score #hit-flag reg1 matches 1 run tag 0-0-0-0-9 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!gunner,tag=!entity-nohit] unless entity @e[tag=gunner,distance=..3] run scoreboard players set #hit-flag reg1 2
execute if score #hit-flag reg1 matches 2 run tag @e[tag=hit-on-line,tag=!gunner,tag=!entity-nohit] add hit-weapon

#命中していない場合移動予定先へ移動
execute if score #hit-flag reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag reg1 matches 1.. at @e[tag=hit-weapon,limit=1,sort=nearest] run tp @s ~ ~ ~

#命中してた場合ダメージ処理
execute if score #hit-flag reg1 matches 2 run function weapon:gun/damage/damage

#y方向の速度更新
#scoreboard players remove @s speedY 5

#曳光弾ならモデル表示
execute as @s[tag=tracer,tag=tracer-lightblue,scores={age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:65535,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
execute as @s[tag=tracer,tag=tracer-orange,scores={age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16747622,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
execute as @s[tag=tracer,tag=tracer-yellow,scores={age=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16776960,CustomModelData:1,Enchantments:[{id:"fire_aspect",lvl:1}]}}]}
execute as @s[tag=enemy-tracer,tag=tracer-red] at @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 20000 1 force

#particle
execute if score #hit-flag reg1 matches 1.. at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 0 1 force

#execute if score #hit-flag reg1 matches 1 run say block
#execute if score #hit-flag reg1 matches 2 run say entity


#hitしてたら弾を削除
execute if score #hit-flag reg1 matches 1.. run kill @s

#age減算、０になったら削除
scoreboard players add @s age 1
execute if score @s[type=armor_stand] age > @s max-age run kill @s
#tellraw @p [{"score" : {"name":"@s", "objective":"age"}}]

#scoreboard players add @s[tag=banshee-gun] age 1
#execute if entity @s[tag=banshee-gun] run tellraw @p [{"score" : {"name":"@s", "objective":"age"}}, {"text":" "}]

#タグ削除
tag @e[tag=hit-weapon] remove hit-weapon
tag @e[tag=hit-on-line] remove hit-on-line
execute at @s run tag @s remove gun-move-executer
tag @e[tag=gunner,distance=..25] remove gunner


#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0


