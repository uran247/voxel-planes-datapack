#> util:fill-angle-gap
#
# 角度差を0にするようにangleに補正を描ける
#
# @input
#   score #angle-gap vp.input
#       目標角度と現在角度の差を示す
#   score #current-angle vp.input
#       現在の機体の角度を示す
#   score #max-turning vp.input
#       角度を変化できる最大量を示す
#
# @output
#   score #angle-gap vp.return
#       角度を変化させる量を示す
#
# @within
#   function plane:move/plane-move/turn-rolling
#   function plane:move/plane-move/turn-flying
    #declare score_holder #angle-gap #角度を変化させる量を示す

#> private
# @private
    #declare score_holder #inv-max-turning #符号を反転させた#max-turning

scoreboard players set #angle-gap vp.return 0

#max-turning < delta-angle ならdelta-angle = change-ammount、0 <= delta-angle < change-ammount ならdelta-angle = delta-angle
execute if score #angle-gap vp.input > #max-turning vp.input run scoreboard players operation #angle-gap vp.return = #max-turning vp.input
execute if score #angle-gap vp.input matches 1.. if score #angle-gap vp.input <= #max-turning vp.input run scoreboard players operation #angle-gap vp.return = #angle-gap vp.input

#angle-gap <= 0なら計算のためchange-ammountを反転
execute if score #angle-gap vp.input matches ..0 run scoreboard players operation #inv-max-turning vp.input = #max-turning vp.input
execute if score #angle-gap vp.input matches ..0 run scoreboard players operation #inv-max-turning vp.input *= #-1 vp.Num

#angle-gap < change-ammountならdelta-angle = -change-ammount、change-ammount <= delta-angle < 0ならdelta-angle = delta-angle
execute if score #angle-gap vp.input < #inv-max-turning vp.input run scoreboard players operation #angle-gap vp.return = #inv-max-turning vp.input
execute if score #angle-gap vp.input matches ..-1 if score #angle-gap vp.input >= #inv-max-turning vp.input run scoreboard players operation #angle-gap vp.return = #angle-gap vp.input

