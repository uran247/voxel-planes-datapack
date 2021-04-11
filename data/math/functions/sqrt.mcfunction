#> math:sqrt
#
# 平方根を計算
#
# @input
#   score #sqrt vp.input #平方根を取りたい値
#
# @public

#> private
#
# @private
    #declare score_holder #sqrt-loop
    #declare score_holder #sqrt-init
    #declare score_holder #sqrt

scoreboard players operation #sqrt vp.input *= #10000 vp.Num
scoreboard players set #sqrt-loop vp.input 0
scoreboard players set #sqrt-init vp.input 40000

function math:sqrt-recursion

scoreboard players operation #sqrt vp.return = #sqrt-init vp.input
