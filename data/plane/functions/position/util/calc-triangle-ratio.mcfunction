#> plane:position/util/calc-triangle-ratio
#
# sinとcosを計算
#
# @input
#   executer @e[tag=plane-root]
#
# @output
#   score #sin vp.reg1
#       sinの値
#   score #cos vp.reg1
#       cosの値
#
# @public


#>
# @within
#   math:sincos
#   plane:position/util/calc-triangle-ratio
    #declare score_holder #angle #計算したい角度[degree*100]を示す

scoreboard players operation #angle vp.input1 = @s vp.AngZ
function math:sincos
    #tellraw @p [{"score" : {"name":"#angle", "objective":"input1"}}]
