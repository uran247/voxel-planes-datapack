#controll/rollingからのみ呼び出される
#離陸時のタグ付、スコア取得処理を行う

tag @s add flying
data merge entity @s {NoGravity:1b}
execute store result score @s vp.PosX run data get entity @s Pos[0] 10000
execute store result score @s vp.PosY run data get entity @s Pos[1] 10000
execute store result score @s vp.PosZ run data get entity @s Pos[2] 10000
scoreboard players set @s vp.sound 0
