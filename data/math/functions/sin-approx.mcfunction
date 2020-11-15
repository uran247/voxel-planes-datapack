#実行者のinput1スコアに入っている数値(-180-180)からsinを計算して実行者のsinに代入
scoreboard players operation @s vp.sin = @s vp.input1
execute if score @s vp.input1 < #0 vp.Num run scoreboard players operation @s vp.sin *= #-1 vp.Num
scoreboard players operation @s vp.reg1 = #180 vp.Num
scoreboard players operation @s vp.reg1 -= @s vp.sin
scoreboard players operation @s vp.sin *= @s vp.reg1
scoreboard players operation @s vp.reg1 = #40500 vp.Num
scoreboard players operation @s vp.reg1 -= @s vp.sin
scoreboard players operation @s vp.sin *= #4000 vp.Num
scoreboard players operation @s vp.sin /= @s vp.reg1
execute if score @s vp.input1 < #0 vp.Num run scoreboard players operation @s vp.sin *= #-1 vp.Num