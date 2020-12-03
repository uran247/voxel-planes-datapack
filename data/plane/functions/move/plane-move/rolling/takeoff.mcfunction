#controll/rollingからのみ呼び出される
#離陸時のタグ付、スコア取得処理を行う

#飛行中フラグを付ける
tag @s add flying

#落ちないようにする
data merge entity @s {NoGravity:1b}

#座標代入
data modify storage minecraft:plane-datapack temporary.Pos set from entity @s Pos
execute store result score @s vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @s vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @s vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#音スコアを0にする
scoreboard players set @s vp.sound 0
