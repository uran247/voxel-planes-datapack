#> plane:move/plane-move/set-base-deaccelerate
#
# ピッチによって減速量調整 上向き：#deaccelerate*#speedY/100 下向き：#resistance*#speedY/200
# 最低値はresistancenの半分
#
# @input
#   score #speedY vp.input
#       現在のY方向の単位ベクトル
#   score #deaccelerate vp.input
#       角度による減速量
#   score #resistance vp.input
#       空気抵抗
#
# @output
#   score #base-resistance vp.return
#       現在の空気抵抗
#
# @within
#   function plane:move/plane-move/rolling
#   function plane:move/plane-move/flying
    #declare score_holder #base-deaccelerate #現在の原則料

#上を向いていた場合:deaccelerate*sin(pitch)減速
execute if score #speedY vp.input matches 1.. run scoreboard players operation #base-deaccelerate vp.return = #deaccelerate vp.input
execute if score #speedY vp.input matches 1.. run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches 1.. run scoreboard players operation #base-deaccelerate vp.return /= #100 vp.Num

#下を向いていた場合:slow fallingの重力加速度*sin^2(pitch)加速
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return = #100 vp.Num
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return /= #-10000 vp.Num

#tellraw @p [{"score" : {"name":"#speedY", "objective":"input"}}]
#tellraw @p [{"score" : {"name":"#base-deaccelerate", "objective":"return"}}]
