##ピッチによって減速量調整 上向き：#deaccelerate*#speedY/100 下向き：#resistance*#speedY/200
#入力 entity:機体　score:#speedY vp.input, #deaccelerate vp.input, #resistance vp.input
#返り score #base-deaccelerate vp.return
execute if score #speedY vp.input matches 0.. run scoreboard players operation #base-deaccelerate vp.return = #deaccelerate vp.input
execute if score #speedY vp.input matches 0.. run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches 0.. run scoreboard players operation #base-deaccelerate vp.return /= #100 vp.Num
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return = #resistance vp.input
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return *= #speedY vp.input
execute if score #speedY vp.input matches ..-1 run scoreboard players operation #base-deaccelerate vp.return /= #-10000 vp.Num

#tellraw @p [{"score" : {"name":"#speedY", "objective":"input"}}]
#tellraw @p [{"score" : {"name":"#base-deaccelerate", "objective":"return"}}]
