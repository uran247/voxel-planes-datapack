#基本加速量決定 throttle*accelerate/20
#入力 #accelerate input, #throttle input
#返り score #base-accelerate return
scoreboard players operation #base-accelerate return = #accelerate input
scoreboard players operation #base-accelerate return += #accelerate-cor input
scoreboard players operation #base-accelerate return *= #throttle input
scoreboard players operation #base-accelerate return /= #20 Num

#tellraw @p [{"score" : {"name":"#base-accelerate", "objective":"return"}}, {"text":" "}, {"score" : {"name":"#accelerate-cor", "objective":"input"}}, {"text":" "} ]
