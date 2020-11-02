#実行者のinput1スコアに入っている数値(-180-180)からcosを計算して実行者のcosに代入
scoreboard players operation @s reg1 = @s input1
execute if score @s input1 > #90 Num if score @s input1 <= #180 Num run scoreboard players operation @s reg1 -= #180 Num
execute if score @s input1 >= #-180 Num if score @s input1 < #-90 Num run scoreboard players operation @s reg1 += #180 Num
scoreboard players operation @s reg1 *= @s reg1
scoreboard players operation @s cos = @s reg1
scoreboard players operation @s reg1 += #32400 Num
scoreboard players operation @s cos *= #-4000 Num
scoreboard players operation @s cos += #32400000 Num
scoreboard players operation @s cos /= @s reg1
execute if score @s input1 > #90 Num if score @s input1 <= #180 Num run scoreboard players operation @s cos *= #-1 Num
execute if score @s input1 >= #-180 Num if score @s input1 < #-90 Num run scoreboard players operation @s cos *= #-1 Num