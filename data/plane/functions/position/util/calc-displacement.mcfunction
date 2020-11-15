#ロール角度に応じた変位計算 変位=^(x*cosθ-y*sinθ) ^(y*cosθ+x*sinθ) ^z
#入力 entity: target, score: #sin vp.reg1 #cos vp.reg1

#displacement算出
#tellraw @p [{"score" : {"name":"#cos", "objective":"vp.reg1"}}, {"text":" "}, {"score" : {"name":"#sin", "objective":"vp.reg1"}}]

scoreboard players operation @s vp.new-offsetX = @s vp.offsetX
scoreboard players operation @s vp.new-offsetY = @s vp.offsetY

scoreboard players operation @s vp.new-offsetX *= #cos vp.reg1
scoreboard players operation @s vp.new-offsetY *= #cos vp.reg1

scoreboard players operation #sin-x-offsetX vp.reg1 = @s vp.offsetX
scoreboard players operation #sin-x-offsetY vp.reg1 = @s vp.offsetY

scoreboard players operation #sin-x-offsetX vp.reg1 *= #sin vp.reg1
scoreboard players operation #sin-x-offsetY vp.reg1 *= #sin vp.reg1

scoreboard players operation @s vp.new-offsetX -= #sin-x-offsetY vp.reg1
scoreboard players operation @s vp.new-offsetY += #sin-x-offsetX vp.reg1

scoreboard players operation @s vp.new-offsetX /= #1000 vp.Num
scoreboard players operation @s vp.new-offsetY /= #1000 vp.Num
