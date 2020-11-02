##ピッチによって減速量調整 上向き：#deaccelerate*#speedY/100 下向き：#resistance*#speedY/200
#入力 entity:機体　score:#speedY input, #deaccelerate input, #resistance input
#返り score #base-deaccelerate return
execute if score #speedY input matches 0.. run scoreboard players operation #base-deaccelerate return = #deaccelerate input
execute if score #speedY input matches 0.. run scoreboard players operation #base-deaccelerate return *= #speedY input
execute if score #speedY input matches 0.. run scoreboard players operation #base-deaccelerate return /= #100 Num
execute if score #speedY input matches ..-1 run scoreboard players operation #base-deaccelerate return = #resistance input
execute if score #speedY input matches ..-1 run scoreboard players operation #base-deaccelerate return *= #speedY input
execute if score #speedY input matches ..-1 run scoreboard players operation #base-deaccelerate return *= #speedY input
execute if score #speedY input matches ..-1 run scoreboard players operation #base-deaccelerate return /= #-10000 Num

#tellraw @p [{"score" : {"name":"#speedY", "objective":"input"}}]
#tellraw @p [{"score" : {"name":"#base-deaccelerate", "objective":"return"}}]
