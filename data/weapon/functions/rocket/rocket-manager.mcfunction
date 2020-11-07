#スコア分向いてる方向にTP
#実行者：弾体

#実行者にタグ付け
tag @s add rocket-move-executer

#自分と同じID持ちのエンティティでno-hit無しに当たらないようにタグ付け
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[distance=..20,tag=!entity-nohit] if score @s plane-id = #plane-id reg1 run tag @s add rocket-gunner

#ヒットフラグ初期化
scoreboard players set #hit-flag reg1 0

#### 移動&ヒット判定 ####
#ベクトル方向へエンティティの向きを向ける
scoreboard players operation #speedX reg1 = @s speedX
scoreboard players operation #speedY reg1 = @s speedY
scoreboard players operation #speedZ reg1 = @s speedZ
scoreboard players operation #speedX reg1 *= @s speed
scoreboard players operation #speedY reg1 *= @s speed
scoreboard players operation #speedZ reg1 *= @s speed
scoreboard players operation #speedX reg1 /= #10 Num
scoreboard players operation #speedY reg1 /= #10 Num
scoreboard players operation #speedZ reg1 /= #10 Num

execute store result score #pos-x reg1 run data get entity @s Pos[0] 100
execute store result score #pos-y reg1 run data get entity @s Pos[1] 100
execute store result score #pos-z reg1 run data get entity @s Pos[2] 100
scoreboard players operation #pos-y reg1 -= @s fall-speed
execute store result storage plane-datapack temporary.Pos[0] double 0.01 run scoreboard players operation #pos-x reg1 += #speedX reg1
execute store result storage plane-datapack temporary.Pos[1] double 0.01 run scoreboard players operation #pos-y reg1 += #speedY reg1
execute store result storage plane-datapack temporary.Pos[2] double 0.01 run scoreboard players operation #pos-z reg1 += #speedZ reg1
data modify entity 0-0-0-0-4 Pos set from storage minecraft:plane-datapack temporary.Pos

tp @s ~ ~ ~ facing entity 0-0-0-0-4
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#tellraw @p [{"nbt":"Pos","entity":"@s"},{"nbt":"Pos","entity":"0-0-0-0-4"}] 

#移動予定先までの間にブロックがあるか判定
execute as @s at 0-0-0-0-4 run function weapon:util/check-block
execute unless score #x return matches 50 unless score #y return matches 100 unless score #z return matches 50 run scoreboard players set #hit-flag reg1 1
execute if score #hit-flag reg1 matches 1 run tag 0-0-0-0-9 add hit-weapon

#移動予定先までの間にエンティティがいるか判定
execute as @s at @s run function weapon:util/check-entity
execute at @s if entity @e[tag=hit-on-line,tag=!rocket-gunner,tag=!entity-nohit] unless entity @e[tag=rocket-gunner,distance=..3] run scoreboard players set #hit-flag reg1 2
execute if score #hit-flag reg1 matches 2 run tag @e[tag=hit-on-line,tag=!rocket-gunner,tag=!entity-nohit] add hit-weapon

#命中していない場合移動予定先へ移動
execute if score #hit-flag reg1 matches 0 at 0-0-0-0-4 run tp @s ~ ~ ~ ~-90 ~

#命中してた場合命中してたところに移動
execute if score #hit-flag reg1 matches 1.. at @e[tag=hit-weapon,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

#速度更新
scoreboard players add @s[scores={speed=..48}] speed 2

#落下速度更新
scoreboard players add @s fall-speed 1

#命中してた場合ダメージ処理
execute if score #hit-flag reg1 matches 1.. run function weapon:rocket/damage/damage
execute if score #hit-flag reg1 matches 1.. run kill @s

#音
playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 1 0

#particle
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~-1.5 ~ run particle minecraft:cloud ^ ^ ^-2 0 0 0 0 3 force
execute at @s rotated ~-90 ~ anchored eyes positioned ~ ~-1.5 ~ run particle minecraft:flame ^ ^ ^-2 0 0 0 0.03 3 force

#タグ削除
tag @e[tag=hit-weapon] remove hit-weapon
tag @e[tag=hit-on-line] remove hit-on-line
execute at @s run tag @s remove rocket-move-executer
tag @e[tag=rocket-gunner,distance=..25] remove rocket-gunner


#エンティティ返却
tp 0-0-0-0-4 0 1 0
tp 0-0-0-0-9 0 1 0


