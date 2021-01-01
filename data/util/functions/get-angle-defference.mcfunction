#> util:get-angle-defference
#
# ソースとターゲットの角度差の取得
#
# @public
#
# @input
#   #source-rot vp.input #ソースの角度[degree*100(-36000..36000)]
#   #target-rot vp.input #ターゲットの角度[degree*100(-36000..36000)]
#
# @output
#   #defference vp.return #角度差[degree*100(-36000..36000)]
#
# @private
    #declare score_holder #source-rot #ソースの角度[degree*100(-36000..36000)]
    #declare score_holder #target-rot #ターゲットの角度[degree*100(-36000..36000)]
    #declare score_holder #defference #角度差[degree*100(-36000..36000)]

#-18000 - 18000に補正
execute if score #source-rot vp.input matches 18100.. run scoreboard players remove #source-rot vp.input 36000
execute if score #source-rot vp.input matches ..-18100 run scoreboard players add #source-rot vp.input 36000
execute if score #target-rot vp.input matches 18100.. run scoreboard players remove #target-rot vp.input 36000
execute if score #target-rot vp.input matches ..-18100 run scoreboard players add #target-rot vp.input 36000

#calculation
scoreboard players operation #source-rot vp.input -= #target-rot vp.input

#-18000 - 18000に補正
execute if score #source-rot vp.input matches 18100.. run scoreboard players remove #source-rot vp.input 36000
execute if score #source-rot vp.input matches ..-18100 run scoreboard players add #source-rot vp.input 36000
scoreboard players operation #defference vp.return = #source-rot vp.input

