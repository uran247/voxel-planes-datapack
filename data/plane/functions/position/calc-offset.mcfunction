#オフセット位置を計算
#入力：entity: target score:@s input1:AngZ #calc-offset-move input1:move or not(default 1)
#実行者：パーツ　実行位置：パーツ score: @s new-offsetX,Y,Z


#座標取得エンティティtp
execute positioned 0.0 0.0 0.0 positioned ^1 ^ ^ run tp 0-0-0-0-1 ~ ~ ~
execute positioned 0.0 0.0 0.0 positioned ^ ^1 ^ run tp 0-0-0-0-2 ~ ~ ~
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-3 ~ ~ ~


#座標計算
#X方向のベクトル算出
execute store result score #x-direction-dx reg1 run data get entity 0-0-0-0-1 Pos[0] 1000
execute store result score #x-direction-dy reg1 run data get entity 0-0-0-0-1 Pos[1] 1000
execute store result score #x-direction-dz reg1 run data get entity 0-0-0-0-1 Pos[2] 1000
scoreboard players operation #x-direction-dx reg1 *= @s new-offsetX
scoreboard players operation #x-direction-dy reg1 *= @s new-offsetX
scoreboard players operation #x-direction-dz reg1 *= @s new-offsetX

#Y方向のベクトル算出
execute store result score #y-direction-dx reg1 run data get entity 0-0-0-0-2 Pos[0] 1000
execute store result score #y-direction-dy reg1 run data get entity 0-0-0-0-2 Pos[1] 1000
execute store result score #y-direction-dz reg1 run data get entity 0-0-0-0-2 Pos[2] 1000
scoreboard players operation #y-direction-dx reg1 *= @s new-offsetY
scoreboard players operation #y-direction-dy reg1 *= @s new-offsetY
scoreboard players operation #y-direction-dz reg1 *= @s new-offsetY

#Z方向の単位ベクトル計算
execute store result score #z-direction-dx reg1 run data get entity 0-0-0-0-3 Pos[0] 1000
execute store result score #z-direction-dy reg1 run data get entity 0-0-0-0-3 Pos[1] 1000
execute store result score #z-direction-dz reg1 run data get entity 0-0-0-0-3 Pos[2] 1000
scoreboard players operation #z-direction-dx reg1 *= @s offsetZ
scoreboard players operation #z-direction-dy reg1 *= @s offsetZ
scoreboard players operation #z-direction-dz reg1 *= @s offsetZ

#桁落とし
scoreboard players operation #x-direction-dx reg1 /= #1000 Num
scoreboard players operation #x-direction-dy reg1 /= #1000 Num
scoreboard players operation #x-direction-dz reg1 /= #1000 Num
scoreboard players operation #y-direction-dx reg1 /= #1000 Num
scoreboard players operation #y-direction-dy reg1 /= #1000 Num
scoreboard players operation #y-direction-dz reg1 /= #1000 Num
scoreboard players operation #z-direction-dx reg1 /= #1000 Num
scoreboard players operation #z-direction-dy reg1 /= #1000 Num
scoreboard players operation #z-direction-dz reg1 /= #1000 Num

#displacement算出
scoreboard players operation @s displacementX = #x-direction-dx reg1
scoreboard players operation @s displacementX += #y-direction-dx reg1
scoreboard players operation @s displacementX += #z-direction-dx reg1
scoreboard players operation @s displacementY = #x-direction-dy reg1
scoreboard players operation @s displacementY += #y-direction-dy reg1
scoreboard players operation @s displacementY += #z-direction-dy reg1
scoreboard players operation @s displacementZ = #x-direction-dz reg1
scoreboard players operation @s displacementZ += #y-direction-dz reg1
scoreboard players operation @s displacementZ += #z-direction-dz reg1

#底面をベースにするタグがついてた場合、底面が腕の高さに来るように補正
execute if entity @s[tag=offset-base] run scoreboard players add @s displacementY 1500

#後処理
#execute positioned 0 1 0 run tp 0-0-0-0-1 ~ ~ ~
#execute positioned 0 1 0 run tp 0-0-0-0-2 ~ ~ ~
#execute positioned 0 1 0 run tp 0-0-0-0-3 ~ ~ ~