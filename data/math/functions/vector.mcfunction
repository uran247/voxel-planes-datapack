#plane:controll/rolling経由で実行　実行者/座標はplane-root
#入力　エンティティ：機体
#処理　向いてる方向の単位ベクトル計算
#返り　スコア：@s speedX,@s speedY,@s speedZ
#実行者の現在座標取得
#execute store result score #x reg1 run data get entity @s Pos[0] 100
#execute store result score #y reg1 run data get entity @s Pos[1] 100
#execute store result score #z reg1 run data get entity @s Pos[2] 100

#向いてる方向に測距エンティティTP
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-1 ~ ~ ~

#測距エンティティの現在座標取得
execute store result score @s speedX run data get entity 0-0-0-0-1 Pos[0] 100
execute store result score @s speedY run data get entity 0-0-0-0-1 Pos[1] 100
execute store result score @s speedZ run data get entity 0-0-0-0-1 Pos[2] 100

tp 0-0-0-0-1 0 1 0

