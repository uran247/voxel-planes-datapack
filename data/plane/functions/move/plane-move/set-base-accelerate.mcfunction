#基本加速量決定 throttle*accelerate/20
#入力 #accelerate vp.input, #throttle vp.input
#返り score #base-accelerate vp.return
scoreboard players operation #base-accelerate vp.return = #accelerate vp.input
scoreboard players operation #base-accelerate vp.return += #accelerate-cor vp.input
scoreboard players operation #base-accelerate vp.return *= #throttle vp.input
scoreboard players operation #base-accelerate vp.return /= #20 vp.Num

#tellraw @p [{"score" : {"name":"#base-accelerate", "objective":"return"}}, {"text":" "}, {"score" : {"name":"#accelerate-cor", "objective":"input"}}, {"text":" "} ]
