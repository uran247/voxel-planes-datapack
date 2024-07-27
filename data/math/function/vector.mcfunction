#> math:vector
#
# 向いてる方向の単位ベクトル計算
#
# @input
#   executer @e
#
# @output
#   score @s speedX #X方向の単位ベクトル
#   score @s speedY #Y方向の単位ベクトル
#   score @s speedZ #Z方向の単位ベクトル
#
# @public

# 向いてる方向に測距エンティティTP
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-1 ~ ~ ~ ~ ~

# 測距エンティティの現在座標取得
#execute store result storage minecraft:plane-datapack temporary.Pos double 1 run data get entity 0-0-0-0-1 Pos
data modify storage minecraft:plane-datapack temporary.Pos set from entity 0-0-0-0-1 Pos
execute store result score @s vp.speedX run data get storage minecraft:plane-datapack temporary.Pos[0] 100
execute store result score @s vp.speedY run data get storage minecraft:plane-datapack temporary.Pos[1] 100
execute store result score @s vp.speedZ run data get storage minecraft:plane-datapack temporary.Pos[2] 100

execute as 0-0-0-0-1 run tp @s 0.0 1.0 0.0

