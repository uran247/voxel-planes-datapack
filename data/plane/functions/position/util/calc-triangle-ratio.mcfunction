#> plane:position/util/calc-triangle-ratio
#
# sinとcosを計算してhas-offsetに代入
# 入力：entity: plane-root
# 返り：score #sin vp.return, #cos vp.return
#
# @public
# @output
#   score #sin vp.reg1
#   score #cos vp.reg1

#>
# @within
#   math:sincos
#   plane:position/util/calc-triangle-ratio
    #declare score_holder #angle #計算したい角度[degree*100]を示す

scoreboard players operation #angle vp.input1 = @s vp.AngZ
function math:sincos
#tellraw @p [{"score" : {"name":"#angle", "objective":"input1"}}]
