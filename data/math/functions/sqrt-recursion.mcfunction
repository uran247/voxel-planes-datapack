#> math:sqrt-recursion
#
# 平方根を計算
#
# @input
#   score #sqrt vp.input
#   score #sqrt-loop vp.input
#   score #sqrt-init vp.input 160
#
# @within
#   function math:sqrt
#   function math:sqrt-recursion

#> private
#
# @private
    #declare score_holder #sqrt-init-square
    #declare score_holder #sqrt-loop
    #declare score_holder #sqrt-init
    #declare score_holder #sqrt

scoreboard players add #sqrt-loop vp.input 1

scoreboard players operation #sqrt-init-square vp.reg1 = #sqrt-init vp.input
scoreboard players operation #sqrt-init-square vp.reg1 *= #sqrt-init-square vp.reg1
scoreboard players operation #sqrt-init-square vp.reg1 -= #sqrt vp.input
scoreboard players operation #sqrt-init-square vp.reg1 /= #sqrt-init vp.input
scoreboard players operation #sqrt-init-square vp.reg1 /= #2 vp.Num

scoreboard players operation #sqrt-init vp.input -= #sqrt-init-square vp.reg1

#tellraw @p [{"score" : {"name":"#sqrt-init", "objective":"vp.input"}}]
#tellraw @p [{"score" : {"name":"#sqrt-init-square", "objective":"vp.reg1"}}]
execute if score #sqrt-loop vp.input matches ..10 unless score #sqrt-init-square vp.reg1 matches -10..10 run function math:sqrt-recursion
