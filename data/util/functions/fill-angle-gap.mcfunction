#角度差を0にするようにangleに補正を描ける
#input: #delta-angle vp.input, #base-angle vp.input, #change-ammount vp.input
#return: #delta-angle vp.return

scoreboard players set #delta-angle vp.return 0

#delta-angleがchange-ammountよりでかいならbase-angle - change-ammount、0以上change-ammount未満ならbase-angle - delta-angle
execute if score #delta-angle vp.input > #change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #change-ammount vp.input
execute if score #delta-angle vp.input matches 1.. if score #delta-angle vp.input <= #change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #delta-angle vp.input

#delta-angleが0以下なら判定のためchange-ammountを反転
execute if score #delta-angle vp.input matches ..0 run scoreboard players operation #inv-change-ammount vp.input = #change-ammount vp.input
execute if score #delta-angle vp.input matches ..0 run scoreboard players operation #inv-change-ammount vp.input *= #-1 vp.Num

#delta-angleがchange-ammountより小さいならbase-angle - change-ammount、0未満change-ammount以上ならbase-angle - delta-angle
execute if score #delta-angle vp.input < #inv-change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #inv-change-ammount vp.input
execute if score #delta-angle vp.input matches ..-1 if score #delta-angle vp.input >= #inv-change-ammount vp.input run scoreboard players operation #delta-angle vp.return = #delta-angle vp.input

