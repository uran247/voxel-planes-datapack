#> util:fill-angle-gap
#
# 角度差を0にするようにangleに補正を描ける
#
# @input
#   score #delta-angle vp.input
#       目標角度と現在角度の差を示す
#   score #base-angle vp.input
#       現在の機体の角度を示す
#   score #change-ammount vp.input
#       角度を変化できる最大量を示す
#
# @output
#   score #delta-angle vp.return
#       角度を変化させる量を示す
#
# @within
#   function plane:move/plane-move/turn-rolling
#   function plane:move/plane-move/turn-flying
    #declare score_holder #delta-angle #角度を変化させる量を示す

#> private
# @private
    #declare score_holder #inv-change-ammount #符号を反転させた#change-ammount

scoreboard players set #delta-angle vp.return 0

#change-ammount < delta-angle ならdelta-angle = change-ammount、0 <= delta-angle < change-ammount ならdelta-angle = delta-angle
execute if score #delta-angle vp.input > #change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #change-ammount vp.input
execute if score #delta-angle vp.input matches 1.. if score #delta-angle vp.input <= #change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #delta-angle vp.input

#delta-angle <= 0なら計算のためchange-ammountを反転
execute if score #delta-angle vp.input matches ..0 run scoreboard players operation #inv-change-ammount vp.input = #change-ammount vp.input
execute if score #delta-angle vp.input matches ..0 run scoreboard players operation #inv-change-ammount vp.input *= #-1 vp.Num

#delta-angle < change-ammountならdelta-angle = -change-ammount、change-ammount <= delta-angle < 0ならdelta-angle = delta-angle
execute if score #delta-angle vp.input < #inv-change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #inv-change-ammount vp.input
execute if score #delta-angle vp.input matches ..-1 if score #delta-angle vp.input >= #inv-change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #delta-angle vp.input

