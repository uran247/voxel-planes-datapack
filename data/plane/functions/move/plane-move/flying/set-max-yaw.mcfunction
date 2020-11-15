#ヨーの変化量を設定
#input: entity:機体
#処理：#max-yaw = yaw-speed * (1-speedy^16) + roll-speed * speedy^16
#return: スコア:#max-yaw vp.return
#TODO: ピッチ速度をsin * vp.sin * pitch + vp.cos * vp.cos * yawにする


#yaw,roll,pitch速度取得
scoreboard players operation #max-yaw vp.return = @s vp.yaw-speed
scoreboard players operation #pitch-speed vp.reg1 = @s vp.pitch-speed
scoreboard players operation #roll-spped vp.reg1 = @s vp.roll-speed

#yaw,roll,pitch速度補正
scoreboard players operation #max-yaw vp.return += @s vp.yaw-spd-cor
scoreboard players operation #pitch-speed vp.reg1 += @s vp.pitch-spd-cor
scoreboard players operation #roll-spped vp.reg1 += @s vp.roll-spd-cor
#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}]

#radder, pitch破損時補正
execute if entity @s[scores={vp.radder=0}] run scoreboard players operation #max-yaw vp.return /= #2 vp.Num
execute if entity @s[scores={vp.elevetor=0}] run scoreboard players operation #pitch-speed vp.reg1 /= #2 vp.Num

#roll角に応じてpitchとyawをスワップ
scoreboard players operation #pitch-speed vp.reg1 *= @s vp.sin
scoreboard players operation #pitch-speed vp.reg1 /= #1000 vp.Num
scoreboard players operation #pitch-speed vp.reg1 *= @s vp.sin
scoreboard players operation #pitch-speed vp.reg1 /= #1000 vp.Num

scoreboard players operation #max-yaw vp.return *= @s vp.cos
scoreboard players operation #max-yaw vp.return /= #1000 vp.Num
scoreboard players operation #max-yaw vp.return *= @s vp.cos
scoreboard players operation #max-yaw vp.return /= #1000 vp.Num

scoreboard players operation #max-yaw vp.return += #pitch-speed vp.reg1

## Pitch角に合わせてRollとyawをスワップ
#speedy絶対値取得
scoreboard players operation #abs-speedy vp.reg1 = @s vp.speedY
scoreboard players operation #abs-speedy vp.reg1 *= @s vp.speedY
scoreboard players operation #abs-speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #abs-speedy vp.reg1 *= #abs-speedy vp.reg1 
scoreboard players operation #abs-speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #abs-speedy vp.reg1 *= #abs-speedy vp.reg1 
scoreboard players operation #abs-speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #abs-speedy vp.reg1 *= #abs-speedy vp.reg1 

#sin vp.cosかける
scoreboard players operation #roll-spped vp.reg1 *= #abs-speedy vp.reg1
scoreboard players set #1-speedy vp.reg1 10000
scoreboard players operation #1-speedy vp.reg1 -= #abs-speedy vp.reg1
scoreboard players operation #max-yaw vp.return *= #1-speedy vp.reg1

#足して1000で割る
scoreboard players operation #max-yaw vp.return += #roll-spped vp.reg1
scoreboard players operation #max-yaw vp.return /= #10000 vp.Num

#返り値
execute if entity @s[tag=destroyed] run scoreboard players set #max-yaw vp.return 0

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"cos"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"sin"}}]

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}]
#tellraw @p [{"score" : {"name":"@s", "objective":"speedY"}}]
