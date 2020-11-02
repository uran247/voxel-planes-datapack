#パーツを移動
#入力：entity　@e[plane-parts] score: @s displacementX,Y,Z

#座標取得
execute store result score #current-x reg1 run data get entity @s Pos[0] 1000
execute store result score #current-y reg1 run data get entity @s Pos[1] 1000
execute store result score #current-z reg1 run data get entity @s Pos[2] 1000
scoreboard players operation #current-x reg1 += @s displacementX
scoreboard players operation #current-y reg1 += @s displacementY
scoreboard players operation #current-z reg1 += @s displacementZ

#移動
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #current-x reg1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #current-y reg1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #current-z reg1
