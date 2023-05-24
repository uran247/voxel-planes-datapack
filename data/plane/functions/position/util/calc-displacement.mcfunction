#> plane:position/util/calc-displacement
#
# ロール角度に応じたオフセット計算 x:(x*cosθ-y*sinθ) y:(y*cosθ+x*sinθ)
# オフセット座標は^x ^y ^zになる
#
# @input
#   executer @e[tag=plane-parts]
#   score #sin vp.reg1
#   score #cos vp.reg1
#
# @output
#   score @s vp.new-offsetX
#   score @s vp.new-offsetY
#
# @public 

#> private
# @private
    #declare score_holder #sin-x-offsetX #X方向のオフセット
    #declare score_holder #sin-x-offsetY #Y方向のオフセット

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
