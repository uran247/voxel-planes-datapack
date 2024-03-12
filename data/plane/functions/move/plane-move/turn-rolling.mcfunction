#> plane:move/plane-move/turn-rolling
#
# 機体をangle-gapを打ち消すように旋回させる
#
# @input
#   executer @e[tag=plane-root,tag=!flying]
#
# @within function plane:move/plane-move
    #declare score_holder #current-angle #機体の現在のY軸角度
    #declare score_holder #max-turning #現在のY軸旋回角度

# radderがなかったら旋回角度は半分 撃墜されてたら0
function plane:move/plane-move/flying/set-max-yaw
scoreboard players operation #max-yaw vp.reg1 = #max-yaw vp.return

# プレイヤーの向きに応じてAngXYZのスコア変更
# yaw
scoreboard players operation #angle-gap vp.input = @s vp.yaw-gap
scoreboard players operation #current-angle vp.input = @s vp.AngY
scoreboard players operation #max-turning vp.input = #max-yaw vp.reg1
function util:fill-angle-gap

# yaw-gapをdelta-angle分減少
scoreboard players operation @s vp.yaw-gap -= #angle-gap vp.return

# delta-angleを現在のY軸角度に加算
scoreboard players operation @s vp.AngY += #angle-gap vp.return

# AngYを-18000 - 18000に補正
scoreboard players remove @s[scores={vp.AngY=18100..}] vp.AngY 36000
scoreboard players add @s[scores={vp.AngY=..-18100}] vp.AngY 36000

# ピッチ，ロールを着地時のものに固定
function plane:move/plane-move/rolling/correct-ang-xz
