#ロール角度に応じた変位計算 変位=^(x*cosθ-y*sinθ) ^(y*cosθ+x*sinθ) ^z
#入力 entity: target, score: #sin reg1 #cos reg1

#三角関数計算
#function math:sin
#function math:cos

#displacement算出
scoreboard players operation @s new-offsetX = @s offsetX
scoreboard players operation @s new-offsetY = @s offsetY

scoreboard players operation @s new-offsetX *= #cos reg1
scoreboard players operation @s new-offsetY *= #cos reg1

scoreboard players operation #sin-x-offsetX reg1 = @s offsetX
scoreboard players operation #sin-x-offsetY reg1 = @s offsetY

scoreboard players operation #sin-x-offsetX reg1 *= #sin reg1
scoreboard players operation #sin-x-offsetY reg1 *= #sin reg1

scoreboard players operation @s new-offsetX -= #sin-x-offsetY reg1
scoreboard players operation @s new-offsetY += #sin-x-offsetX reg1

scoreboard players operation @s new-offsetX /= #1000 Num
scoreboard players operation @s new-offsetY /= #1000 Num
