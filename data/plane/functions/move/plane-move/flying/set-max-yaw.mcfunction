#ヨーの変化量を設定
#input: entity:機体
#処理：#max-yaw = yaw-speed * (1-speedy^16) + roll-speed * speedy^16
#return: スコア:#max-yaw return
#TODO: ピッチ速度をsin * sin * pitch + cos * cos * yawにする


#yaw,roll,pitch速度取得
scoreboard players operation #max-yaw return = @s yaw-speed
scoreboard players operation #pitch-speed reg1 = @s pitch-speed
scoreboard players operation #roll-spped reg1 = @s roll-speed

#yaw,roll,pitch速度補正
scoreboard players operation #max-yaw return += @s yaw-speed-cor
scoreboard players operation #pitch-speed reg1 += @s yaw-speed-cor
scoreboard players operation #roll-spped reg1 += @s roll-speed-cor
#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}]

#radder, pitch破損時補正
execute if entity @s[scores={radder=0}] run scoreboard players operation #max-yaw return /= #2 Num
execute if entity @s[scores={elevetor=0}] run scoreboard players operation #pitch-speed reg1 /= #2 Num

#roll角に応じてpitchとyawをスワップ
scoreboard players operation #pitch-speed reg1 *= @s sin
scoreboard players operation #pitch-speed reg1 /= #1000 Num
scoreboard players operation #pitch-speed reg1 *= @s sin
scoreboard players operation #pitch-speed reg1 /= #1000 Num

scoreboard players operation #max-yaw return *= @s cos
scoreboard players operation #max-yaw return /= #1000 Num
scoreboard players operation #max-yaw return *= @s cos
scoreboard players operation #max-yaw return /= #1000 Num

scoreboard players operation #max-yaw return += #pitch-speed reg1

## Pitch角に合わせてRollとyawをスワップ
#speedy絶対値取得
scoreboard players operation #abs-speedy reg1 = @s speedY
scoreboard players operation #abs-speedy reg1 *= @s speedY
scoreboard players operation #abs-speedy reg1 /= #100 Num
scoreboard players operation #abs-speedy reg1 *= #abs-speedy reg1 
scoreboard players operation #abs-speedy reg1 /= #100 Num
scoreboard players operation #abs-speedy reg1 *= #abs-speedy reg1 
scoreboard players operation #abs-speedy reg1 /= #100 Num
scoreboard players operation #abs-speedy reg1 *= #abs-speedy reg1 

#sin cosかける
scoreboard players operation #roll-spped reg1 *= #abs-speedy reg1
scoreboard players set #1-speedy reg1 10000
scoreboard players operation #1-speedy reg1 -= #abs-speedy reg1
scoreboard players operation #max-yaw return *= #1-speedy reg1

#足して1000で割る
scoreboard players operation #max-yaw return += #roll-spped reg1
scoreboard players operation #max-yaw return /= #10000 Num

#返り値
execute if entity @s[tag=destroyed] run scoreboard players set #max-yaw return 0

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"cos"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"sin"}}]

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}]
#tellraw @p [{"score" : {"name":"@s", "objective":"speedY"}}]
