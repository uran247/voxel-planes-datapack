#> plane:move/plane-move/set-base-resistance
#
# 基本減速量決定 speed*resistance/cruise-speed
# 最低値はresistancenの半分
#
# @input
#   score #speed vp.input
#       現在の速度
#   score #max-speed vp.input
#       巡航速度
#   score #resistance vp.input
#       空気抵抗
#   score #energy-loss vp.input
#       エネルギーロス値
#   score #ang-z vp.input
#       現在のロール角
#
# @output
#   score #base-resistance vp.return
#       現在の空気抵抗
#
# @within
#   function plane:move/plane-move/rolling
#   function plane:move/plane-move/flying
    #declare score_holder #base-resistance #現在の空気抵抗

#> private
# @private
    #declare score_holder #min-registance #最低空気抵抗

#抵抗*現在速度/最高速度
scoreboard players operation #base-resistance vp.return = #speed vp.input
scoreboard players operation #base-resistance vp.return *= #resistance vp.input
scoreboard players operation #base-resistance vp.return /= #max-speed vp.input

#エネルギーロス*|ロール角|/9000
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 = #energy-loss vp.input
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 *= #ang-z vp.input
execute if score #ang-z vp.input matches ..-1 run scoreboard players operation #energy-loss vp.reg1 *= #-1 vp.Num
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 /= #9000 vp.Num

#抵抗にエネルギーロスを加える
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #base-resistance vp.return += #energy-loss vp.reg1

#抵抗が最低値(抵抗/2)を下回っていた場合最低値にする
#scoreboard players operation #min-registance vp.reg1 = #resistance vp.input
#scoreboard players operation #min-registance vp.reg1 /= #2 vp.Num
#execute if score #base-resistance vp.return < #min-registance vp.reg1 run scoreboard players operation #base-resistance vp.return = #min-registance vp.reg1
