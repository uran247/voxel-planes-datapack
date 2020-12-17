#スコア分向いてる方向にTP
#実行者：弾体

#実行者にタグ付け
tag @s add rocket-move-executer

#自分と同じID持ちのエンティティでno-hit無しに当たらないようにタグ付け
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[distance=..20,tag=!entity-nohit] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add rocket-gunner

#ヒットフラグ初期化
scoreboard players set #hit-flag vp.reg1 0

#### 移動&ヒット判定 ####
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
scoreboard players operation #pos-y vp.reg1 -= @s vp.fall-speed
execute store result storage plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x vp.reg1 += #speedX vp.reg1
execute store result storage plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y vp.reg1 += #speedY vp.reg1
execute store result storage plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z vp.reg1 += #speedZ vp.reg1
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos

tp @s ~ ~ ~ facing entity 0-0-0-0-4
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-0-0-4"}] 

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x vp.return matches 50 unless score #y vp.return matches 100 unless score #z vp.return matches 50 run scoreboard players set #hit-flag vp.reg1 1
execute if score #hit-flag vp.reg1 matches 1 run tag 0-0-0-0-9 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!rocket-gunner,tag=!entity-nohit] unless entity @e[tag=rocket-gunner,distance=..3] run scoreboard players set #hit-flag vp.reg1 2
execute if score #hit-flag vp.reg1 matches 2 run tag @e[tag=hit-on-line,tag=!rocket-gunner,tag=!entity-nohit] add hit-weapon

#命中していない場合移動予定先へ移動
execute if score #hit-flag vp.reg1 matches 0 positioned as 0-0-0-0-4 run tp @s ~ ~ ~ ~ ~

#命中してた場合命中してたところに移動
execute if score #hit-flag vp.reg1 matches 1.. at @e[tag=hit-weapon,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

#速度更新
scoreboard players add @s[scores={vp.speed=..48}] vp.speed 2

#落下速度更新
scoreboard players add @s vp.fall-speed 1

#命中してた場合ダメージ処理
execute if score #hit-flag vp.reg1 matches 1.. run function weapon:rocket/damage/damage
execute if score #hit-flag vp.reg1 matches 1.. run kill @s

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~ ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#タグ削除
tag @e[tag=hit-weapon] remove hit-weapon
tag @e[tag=hit-on-line] remove hit-on-line
execute at @s run tag @s remove rocket-move-executer
tag @e[tag=rocket-gunner,distance=..25] remove rocket-gunner


#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0

