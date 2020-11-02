#sincos同時計算
#入力：score: #angle input1: angle
#返り：score #sin return, #cos return

execute store result entity 0-0-20-0-0 Rotation[0] float 0.01 run scoreboard players get #angle input1
execute rotated as 0-0-20-0-0 positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run tp 0-0-20-0-0 ~ ~ ~
execute store result score #sin return run data get entity 0-0-20-0-0 Pos[0] -200
execute store result score #cos return run data get entity 0-0-20-0-0 Pos[2] 200

#execute if entity 0-0-21-0-0 run tellraw @p [{"nbt":"Pos[0]","entity":"0-0-21-0-0"},{"nbt":"Pos[2]","entity":"0-0-21-0-0"}] 
#tellraw @p [{"score" : {"name":"#sin", "objective":"return"}}, {"text":" "}, {"score" : {"name":"#cos", "objective":"return"}}]
