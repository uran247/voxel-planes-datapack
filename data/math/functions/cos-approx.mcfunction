#実行者のinput1スコアに入っている数値(-180-180)からcosを計算して実行者のcosに代入
scoreboard players operation @s vp.reg1 = @s vp.input1
execute if score @s vp.input1 > #90 vp.Num if score @s vp.input1 <= #180 vp.Num run scoreboard players operation @s vp.reg1 -= #180 vp.Num
execute if score @s vp.input1 >= #-180 vp.Num if score @s vp.input1 < #-90 vp.Num run scoreboard players operation @s vp.reg1 += #180 vp.Num
scoreboard players operation @s vp.reg1 *= @s vp.reg1
scoreboard players operation @s vp.cos = @s vp.reg1
scoreboard players operation @s vp.reg1 += #32400 vp.Num
scoreboard players operation @s vp.cos *= #-4000 vp.Num
scoreboard players operation @s vp.cos += #32400000 vp.Num
scoreboard players operation @s vp.cos /= @s vp.reg1
execute if score @s vp.input1 > #90 vp.Num if score @s vp.input1 <= #180 vp.Num run scoreboard players operation @s vp.cos *= #-1 vp.Num
execute if score @s vp.input1 >= #-180 vp.Num if score @s vp.input1 < #-90 vp.Num run scoreboard players operation @s vp.cos *= #-1 vp.Num