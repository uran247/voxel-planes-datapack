#plane:controll/rolling経由で実行　実行者/座標はplane-root
#入力　エンティティ：機体
#処理　向いてる方向の単位ベクトル計算
#返り　スコア：@s speedX,@s speedY,@s speedZ

#向いてる方向に測距エンティティTP
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-1 ~ ~ ~ ~ ~

#測距エンティティの現在座標取得
#execute store result storage plane-datapack temporary.Pos double 1 run data get entity 0-0-0-0-1 Pos
data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-1 Pos
execute store result score @s vp.speedX run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score @s vp.speedY run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score @s vp.speedZ run data get storage minecraft:plane-datapack temporary.Pos[2] 100

execute as 0-0-0-0-1 run tp @s 0.0 1.0 0.0
