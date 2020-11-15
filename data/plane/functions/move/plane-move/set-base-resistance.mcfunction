#基本減速量決定 speed*resistance/cruise-speed
#入力 #speed vp.input, #cruise-speed vp.input, #resistance vp.input, #energy-loss vp.input, #ang-z vp.input
#返り score #base-resistance vp.return
scoreboard players operation #base-resistance vp.return = #speed vp.input
scoreboard players operation #base-resistance vp.return *= #resistance vp.input
scoreboard players operation #base-resistance vp.return /= #cruise-speed vp.input

execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 = #energy-loss vp.input
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 *= #ang-z vp.input
execute if score #ang-z vp.input matches ..-1 run scoreboard players operation #energy-loss vp.reg1 *= #-1 vp.Num
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #energy-loss vp.reg1 /= #9000 vp.Num
execute unless score #ang-z vp.input matches 0 run scoreboard players operation #base-resistance vp.return += #energy-loss vp.reg1

scoreboard players operation #min-registance vp.reg1 = #resistance vp.input
scoreboard players operation #min-registance vp.reg1 /= #2 vp.Num
execute if score #base-resistance vp.return < #min-registance vp.reg1 run scoreboard players operation #base-resistance vp.return = #min-registance vp.reg1
