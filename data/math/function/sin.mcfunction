#実行者のinput1スコアに入っている数値(-180-180)からsinを計算して実行者のsinに代入

execute store result entity 0-0-0-0-20 Rotation[0] float 0.01 run scoreboard players get @s vp.input1
execute rotated as 0-0-0-0-20 positioned 0.0 0.0 0.0 positioned ^ ^ ^5 in overworld run tp 0-0-0-0-20 ~ ~ ~
execute store result score @s vp.sin run data get entity 0-0-0-0-20 Pos[0] -200
