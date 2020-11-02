#角度差を0にするようにangleに補正を描ける
#input: #delta-angle input, #base-angle input, #change-ammount input
#return: #delta-angle return

scoreboard players set #delta-angle return 0

#delta-angleがchange-ammountよりでかいならbase-angle - change-ammount、0以上change-ammount未満ならbase-angle - delta-angle
execute if score #delta-angle input > #change-ammount input run scoreboard players operation #delta-angle return = #change-ammount input
execute if score #delta-angle input matches 1.. if score #delta-angle input <= #change-ammount input run scoreboard players operation #delta-angle return = #delta-angle input

#delta-angleが0以下なら判定のためchange-ammountを反転
execute if score #delta-angle input matches ..0 run scoreboard players operation #inv-change-ammount input = #change-ammount input
execute if score #delta-angle input matches ..0 run scoreboard players operation #inv-change-ammount input *= #-1 Num

#delta-angleがchange-ammountより小さいならbase-angle - change-ammount、0未満change-ammount以上ならbase-angle - delta-angle
execute if score #delta-angle input < #inv-change-ammount input run scoreboard players operation #delta-angle return = #inv-change-ammount input
execute if score #delta-angle input matches ..-1 if score #delta-angle input >= #inv-change-ammount input run scoreboard players operation #delta-angle return = #delta-angle input

