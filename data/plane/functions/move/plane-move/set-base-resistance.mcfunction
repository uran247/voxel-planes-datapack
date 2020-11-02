#基本減速量決定 speed*resistance/cruise-speed
#入力 #speed input, #cruise-speed input, #resistance input, #energy-loss input, #ang-z input
#返り score #base-resistance return
scoreboard players operation #base-resistance return = #speed input
scoreboard players operation #base-resistance return *= #resistance input
scoreboard players operation #base-resistance return /= #cruise-speed input

execute unless score #ang-z input matches 0 run scoreboard players operation #energy-loss reg1 = #energy-loss input
execute unless score #ang-z input matches 0 run scoreboard players operation #energy-loss reg1 *= #ang-z input
execute if score #ang-z input matches ..-1 run scoreboard players operation #energy-loss reg1 *= #-1 Num
execute unless score #ang-z input matches 0 run scoreboard players operation #energy-loss reg1 /= #9000 Num
execute unless score #ang-z input matches 0 run scoreboard players operation #base-resistance return += #energy-loss reg1

scoreboard players operation #min-registance reg1 = #resistance input
scoreboard players operation #min-registance reg1 /= #2 Num
execute if score #base-resistance return < #min-registance reg1 run scoreboard players operation #base-resistance return = #min-registance reg1
