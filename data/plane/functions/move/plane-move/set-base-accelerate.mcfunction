#> plane:move/plane-move/set-base-accelerate
#
# 基本加速量決定 throttle*accelerate/20
#
# @input
#   #accelerate vp.input
#       基本加速度
#   #throttle vp.input
#       現在のスロットル
#
# @output
#   #base-accelerate vp.return
#       現在の加速度
#
# @within
#   function plane:move/plane-move/rolling
#   function plane:move/plane-move/flying
    #declare score_holder #base-accelerate #現在の加速度

#scoreboard players operation #base-accelerate vp.return = #accelerate vp.input
#scoreboard players operation #base-accelerate vp.return += #accelerate-cor vp.input
#scoreboard players operation #base-accelerate vp.return *= #throttle vp.input
#scoreboard players operation #base-accelerate vp.return /= #20 vp.Num

#現在の推力計算
scoreboard players set #base-accelerate vp.return 1837500
scoreboard players operation #base-accelerate vp.return /= #weight vp.input
scoreboard players operation #base-accelerate vp.return *= #horse-power vp.input
scoreboard players operation #base-accelerate vp.return /= #speed vp.input

#スロットル係数をかける
scoreboard players operation #base-accelerate vp.return *= #throttle vp.input
scoreboard players operation #base-accelerate vp.return /= #20 vp.Num

#tellraw @p [{"score" : {"name":"#base-accelerate", "objective":"return"}}, {"text":" "}, {"score" : {"name":"#accelerate-cor", "objective":"input"}}, {"text":" "} ]
