#> math:sincos
# sincos同時計算
# 入力：score: #angle vp.input1: angle
# 返り：score #sin vp.return, #cos vp.return
#
# @input
#   score #angle vp.input1
#       角度[degree*100]
#
# @output
#   score #sin vp.return
#       sinの値*1000
#   score #cos vp.return
#       cosの値*1000
#
# @public
    #declare score_holder #sin #sinの値*1000を示す
    #declare score_holder #cos #cosの値*1000を示す

execute store result entity 0-0-0-0-20 Rotation[0] float 0.01 run scoreboard players get #angle vp.input1
execute in overworld rotated as 0-0-0-0-20 positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run tp 0-0-0-0-20 ~ ~ ~
execute store result score #sin vp.return run data get entity 0-0-0-0-20 Pos[0] -200
execute store result score #cos vp.return run data get entity 0-0-0-0-20 Pos[2] 200
