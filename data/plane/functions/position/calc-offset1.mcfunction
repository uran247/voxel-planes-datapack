#オフセット位置を計算
#入力：entity: target score:@s input1:AngZ #calc-offset-move input1:move or not(default 1)
#実行者：パーツ　実行位置：パーツ

#三角関数計算
function math:sin
function math:cos

#座標取得
execute store result score #offset-x reg1 run data get entity @s Pos[0] 1000
execute store result score #offset-y reg1 run data get entity @s Pos[1] 1000
execute store result score #offset-z reg1 run data get entity @s Pos[2] 1000

#座標取得エンティティtp
execute at @s rotated ~-90 ~ positioned ^1 ^ ^ run tp 0-0-1-0-0 ~ ~ ~
execute at @s rotated ~-90 ~ positioned ^ ^1 ^ run tp 0-0-2-0-0 ~ ~ ~
execute at @s rotated ~-90 ~ positioned ^ ^ ^1 run tp 0-0-3-0-0 ~ ~ ~

#X方向の単位ベクトル算出
execute store result score #x-direction-dx reg1 run data get entity 0-0-1-0-0 Pos[0] 1000
execute store result score #x-direction-dy reg1 run data get entity 0-0-1-0-0 Pos[1] 1000
execute store result score #x-direction-dz reg1 run data get entity 0-0-1-0-0 Pos[2] 1000
scoreboard players operation #x-direction-dx reg1 -= #offset-x reg1
scoreboard players operation #x-direction-dy reg1 -= #offset-y reg1
scoreboard players operation #x-direction-dz reg1 -= #offset-z reg1
scoreboard players operation #x-direction-unit-vector-x reg1 = #x-direction-dx reg1
scoreboard players operation #x-direction-unit-vector-y reg1 = #x-direction-dy reg1
scoreboard players operation #x-direction-unit-vector-z reg1 = #x-direction-dz reg1

#角度に応じてx方向単位ベクトルを回転
scoreboard players operation #x-direction-dx reg1 *= @s cos
scoreboard players operation #x-direction-dy reg1 *= @s cos
scoreboard players operation #x-direction-dz reg1 *= @s cos
scoreboard players operation #x-direction-dx reg1 /= #1000 Num
scoreboard players operation #x-direction-dy reg1 /= #1000 Num
scoreboard players operation #x-direction-dz reg1 /= #1000 Num

#Y方向の単位ベクトル算出
execute store result score #y-direction-dx reg1 run data get entity 0-0-2-0-0 Pos[0] 1000
execute store result score #y-direction-dy reg1 run data get entity 0-0-2-0-0 Pos[1] 1000
execute store result score #y-direction-dz reg1 run data get entity 0-0-2-0-0 Pos[2] 1000
scoreboard players operation #y-direction-dx reg1 -= #offset-x reg1
scoreboard players operation #y-direction-dy reg1 -= #offset-y reg1
scoreboard players operation #y-direction-dz reg1 -= #offset-z reg1
scoreboard players operation #y-direction-unit-vector-x reg1 = #y-direction-dx reg1
scoreboard players operation #y-direction-unit-vector-y reg1 = #y-direction-dy reg1
scoreboard players operation #y-direction-unit-vector-z reg1 = #y-direction-dz reg1

#角度に応じてy方向単位ベクトルを回転
scoreboard players operation #y-direction-dx reg1 *= @s sin
scoreboard players operation #y-direction-dy reg1 *= @s sin
scoreboard players operation #y-direction-dz reg1 *= @s sin
scoreboard players operation #y-direction-dx reg1 /= #1000 Num
scoreboard players operation #y-direction-dy reg1 /= #1000 Num
scoreboard players operation #y-direction-dz reg1 /= #1000 Num

#offsetX×単位ベクトル
scoreboard players operation #x-direction-dx reg1 *= @s offsetX
scoreboard players operation #x-direction-dy reg1 *= @s offsetX
scoreboard players operation #x-direction-dz reg1 *= @s offsetX
scoreboard players operation #y-direction-dx reg1 *= @s offsetX
scoreboard players operation #y-direction-dy reg1 *= @s offsetX
scoreboard players operation #y-direction-dz reg1 *= @s offsetX

#Y方向の単位ベクトル算出
scoreboard players operation #x-direction-unit-vector-x reg1 *= @s sin
scoreboard players operation #x-direction-unit-vector-y reg1 *= @s sin
scoreboard players operation #x-direction-unit-vector-z reg1 *= @s sin
scoreboard players operation #x-direction-unit-vector-x reg1 /= #1000 Num
scoreboard players operation #x-direction-unit-vector-y reg1 /= #1000 Num
scoreboard players operation #x-direction-unit-vector-z reg1 /= #1000 Num

scoreboard players operation #y-direction-unit-vector-x reg1 *= @s cos
scoreboard players operation #y-direction-unit-vector-y reg1 *= @s cos
scoreboard players operation #y-direction-unit-vector-z reg1 *= @s cos
scoreboard players operation #y-direction-unit-vector-x reg1 /= #1000 Num
scoreboard players operation #y-direction-unit-vector-y reg1 /= #1000 Num
scoreboard players operation #y-direction-unit-vector-z reg1 /= #1000 Num

scoreboard players operation #x-direction-unit-vector-x reg1 *= @s offsetY
scoreboard players operation #x-direction-unit-vector-y reg1 *= @s offsetY
scoreboard players operation #x-direction-unit-vector-z reg1 *= @s offsetY
scoreboard players operation #y-direction-unit-vector-x reg1 *= @s offsetY
scoreboard players operation #y-direction-unit-vector-y reg1 *= @s offsetY
scoreboard players operation #y-direction-unit-vector-z reg1 *= @s offsetY

#Z方向の単位ベクトル計算
execute store result score #z-direction-dx reg1 run data get entity 0-0-3-0-0 Pos[0] 1000
execute store result score #z-direction-dy reg1 run data get entity 0-0-3-0-0 Pos[1] 1000
execute store result score #z-direction-dz reg1 run data get entity 0-0-3-0-0 Pos[2] 1000
scoreboard players operation #z-direction-dx reg1 -= #offset-x reg1
scoreboard players operation #z-direction-dy reg1 -= #offset-y reg1
scoreboard players operation #z-direction-dz reg1 -= #offset-z reg1
scoreboard players operation #z-direction-dx reg1 *= @s offsetZ
scoreboard players operation #z-direction-dy reg1 *= @s offsetZ
scoreboard players operation #z-direction-dz reg1 *= @s offsetZ


#桁あわせ
#scoreboard players operation #offset-x reg1 *= #10 Num
#scoreboard players operation #offset-y reg1 *= #10 Num
#scoreboard players operation #offset-z reg1 *= #10 Num

#オーバーフローしないように桁落とし
scoreboard players operation #x-direction-dx reg1 /= #1000 Num
scoreboard players operation #x-direction-dy reg1 /= #1000 Num
scoreboard players operation #x-direction-dz reg1 /= #1000 Num
scoreboard players operation #y-direction-dx reg1 /= #1000 Num
scoreboard players operation #y-direction-dy reg1 /= #1000 Num
scoreboard players operation #y-direction-dz reg1 /= #1000 Num
scoreboard players operation #x-direction-unit-vector-x reg1 /= #1000 Num
scoreboard players operation #x-direction-unit-vector-y reg1 /= #1000 Num
scoreboard players operation #x-direction-unit-vector-z reg1 /= #1000 Num
scoreboard players operation #y-direction-unit-vector-x reg1 /= #1000 Num
scoreboard players operation #y-direction-unit-vector-y reg1 /= #1000 Num
scoreboard players operation #y-direction-unit-vector-z reg1 /= #1000 Num
scoreboard players operation #z-direction-dx reg1 /= #1000 Num
scoreboard players operation #z-direction-dy reg1 /= #1000 Num
scoreboard players operation #z-direction-dz reg1 /= #1000 Num

#最終座標計算
scoreboard players set @s displacementX 0
scoreboard players set @s displacementY 0
scoreboard players set @s displacementZ 0

scoreboard players operation @s displacementX += #x-direction-dx reg1
scoreboard players operation @s displacementX += #y-direction-dx reg1
scoreboard players operation @s displacementX += #x-direction-unit-vector-x reg1
scoreboard players operation @s displacementX -= #y-direction-unit-vector-x reg1
scoreboard players operation @s displacementX -= #z-direction-dx reg1

scoreboard players operation @s displacementY += #x-direction-dy reg1
scoreboard players operation @s displacementY += #y-direction-dy reg1
scoreboard players operation @s displacementY += #x-direction-unit-vector-y reg1
scoreboard players operation @s displacementY -= #y-direction-unit-vector-y reg1
scoreboard players operation @s displacementY -= #z-direction-dy reg1

scoreboard players operation @s displacementZ += #x-direction-dz reg1
scoreboard players operation @s displacementZ += #y-direction-dz reg1
scoreboard players operation @s displacementZ += #x-direction-unit-vector-z reg1
scoreboard players operation @s displacementZ -= #y-direction-unit-vector-z reg1
scoreboard players operation @s displacementZ -= #z-direction-dz reg1

#底面をベースにするタグがついてた場合、底面が腕の高さに来るように補正
execute if entity @s[tag=offset-base] run scoreboard players add @s displacementY 1500

#execute if entity @s[tag=cockpit] run tellraw @p [{"score" : {"name":"#z-direction-dz", "objective":"reg1"}}, {"text":" "}]

#移動
execute if score #calc-offset-move input1 matches 1 run scoreboard players operation @s displacementX += #offset-x reg1
execute if score #calc-offset-move input1 matches 1 run scoreboard players operation @s displacementY += #offset-y reg1
execute if score #calc-offset-move input1 matches 1 run scoreboard players operation @s displacementZ += #offset-z reg1
execute if score #calc-offset-move input1 matches 1 store result entity @s Pos[0] double 0.001 run scoreboard players get @s displacementX
execute if score #calc-offset-move input1 matches 1 store result entity @s Pos[1] double 0.001 run scoreboard players get @s displacementY
execute if score #calc-offset-move input1 matches 1 store result entity @s Pos[2] double 0.001 run scoreboard players get @s displacementZ

#後処理
tp 0-0-1-0-0 0 1 0
tp 0-0-2-0-0 0 1 0
tp 0-0-3-0-0 0 1 0


