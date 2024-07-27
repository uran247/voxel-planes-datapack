#> plane:weapon/util/get-landing-time
#
# 着弾時間を計算 t=14.14*sqrt(50*#speedY*#speedY + #altitude) - 100*#speedY
#
# @input
#   score #altitude vp.input #block *10000
#   score #speedY vp.input # block/tick * 100
#
# @within function plane:weapon/util/display-aim

#> private
# @private
    #declare score_holder #sqrt
    #declare score_holder #altitude
    #declare score_holder #time

scoreboard players operation #speedY-square vp.reg1 = #speedY vp.input
scoreboard players operation #speedY-square vp.reg1 *= #speedY vp.input
scoreboard players operation #speedY-square vp.reg1 /= #2 vp.Num
scoreboard players operation #sqrt vp.input = #altitude vp.input
scoreboard players operation #sqrt vp.input /= #100 vp.Num
scoreboard players operation #sqrt vp.input += #speedY-square vp.reg1
function math:sqrt
scoreboard players operation #time vp.return = #sqrt vp.return
scoreboard players operation #time vp.return /= #71 vp.Num

scoreboard players operation #time vp.return -= #speedY vp.input
