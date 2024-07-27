#> plane:weapon/util/get-horizontal-speed
#
# 水平方向の速度を計算
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:weapon/util/display-aim

#> private
# @private
    #declare score_holder #sqrt
    #declare score_holder #vertical-speed
    #declare score_holder #horizontal-speed

scoreboard players set #sqrt vp.input 10000
scoreboard players operation #vertical-speed vp.reg1 = @s vp.speedY
scoreboard players operation #vertical-speed vp.reg1 *= @s vp.speedY
scoreboard players operation #sqrt vp.input -= #vertical-speed vp.reg1
scoreboard players operation #sqrt vp.input /= #100 vp.Num
function math:sqrt

scoreboard players operation #horizontal-speed vp.return = @s vp.speed
scoreboard players operation #horizontal-speed vp.return *= #sqrt vp.return
scoreboard players operation #horizontal-speed vp.return /= #1000 vp.Num
