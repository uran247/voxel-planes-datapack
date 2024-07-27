#> plane:move/plane-move/flying/set-max-yaw
#
# ヨーの変化量を設定
# yaw-speed = pitch-speed * sin^2(roll) + yaw-speed * cos^2(roll)
# #max-yaw = yaw-speed * (1-speedy^16) + roll-speed * speedy^16
# radderがなかったら変化量は半分 撃墜されてたら変化量は0
#
# @input
#   executer @e[tag=plane-root,tag=!flying]
#
# @output
#   score #max-yaw vp.return
#       1tickにできる最大旋回角度
#
# @within
#   function plane:move/plane-move/turn-rolling
#   function plane:move/plane-move/turn-flying
    #declare score_holder #max-yaw #1tickにできる最大旋回角度

#> private
# @private
    #declare score_holder #pitch-speed #デフォルトのピッチ速度を表す
    #declare score_holder #roll-spped #デフォルトのロール速度を表す
    #declare score_holder #pow16speedy #Y方向単位ベクトルの16乗を示す
    #declare score_holder #1-pow16speedy #1-Y方向単位ベクトル^16を示す
    #declare score_holder #gross-weight #機体の総重量を示す

# yaw,roll,pitch速度取得
scoreboard players operation #max-yaw vp.return = @s vp.yaw-speed
scoreboard players operation #pitch-speed vp.reg1 = @s vp.pitch-speed
scoreboard players operation #roll-spped vp.reg1 = @s vp.roll-speed

# yaw,roll,pitch速度補正(旋回速度*通常時重量/総重量)
scoreboard players operation #gross-weight vp.reg1 = @s vp.weight
scoreboard players operation #gross-weight vp.reg1 += @s vp.add-weight
scoreboard players operation #max-yaw vp.return *= @s vp.weight
scoreboard players operation #max-yaw vp.return /= #gross-weight vp.reg1
scoreboard players operation #pitch-speed vp.reg1 *= @s vp.weight
scoreboard players operation #pitch-speed vp.reg1 /= #gross-weight vp.reg1

#scoreboard players operation #roll-spped vp.reg1 += @s vp.roll-spd-cor
#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"vp.reg1"}}]

# radder, pitch破損時補正
execute if entity @s[scores={vp.radder=0}] run scoreboard players operation #max-yaw vp.return /= #2 vp.Num
execute if entity @s[scores={vp.elevator=0}] run scoreboard players operation #pitch-speed vp.reg1 /= #2 vp.Num

# roll角に応じてpitchとyawをスワップ
scoreboard players operation #pitch-speed vp.reg1 *= @s vp.sin
scoreboard players operation #pitch-speed vp.reg1 /= #1000 vp.Num
scoreboard players operation #pitch-speed vp.reg1 *= @s vp.sin
scoreboard players operation #pitch-speed vp.reg1 /= #1000 vp.Num

scoreboard players operation #max-yaw vp.return *= @s vp.cos
scoreboard players operation #max-yaw vp.return /= #1000 vp.Num
scoreboard players operation #max-yaw vp.return *= @s vp.cos
scoreboard players operation #max-yaw vp.return /= #1000 vp.Num

scoreboard players operation #max-yaw vp.return += #pitch-speed vp.reg1

# Pitch角に合わせてRollとyawをスワップ
# speedy^16取得
scoreboard players operation #pow16speedy vp.reg1 = @s vp.speedY
scoreboard players operation #pow16speedy vp.reg1 *= @s vp.speedY
scoreboard players operation #pow16speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #pow16speedy vp.reg1 *= #pow16speedy vp.reg1 
scoreboard players operation #pow16speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #pow16speedy vp.reg1 *= #pow16speedy vp.reg1 
scoreboard players operation #pow16speedy vp.reg1 /= #100 vp.Num
scoreboard players operation #pow16speedy vp.reg1 *= #pow16speedy vp.reg1 

# sin vp.cosかける
scoreboard players operation #roll-spped vp.reg1 *= #pow16speedy vp.reg1
scoreboard players set #1-pow16speedy vp.reg1 10000
scoreboard players operation #1-pow16speedy vp.reg1 -= #pow16speedy vp.reg1
scoreboard players operation #max-yaw vp.return *= #1-pow16speedy vp.reg1

# yawとrollを足して10000で割る
scoreboard players operation #max-yaw vp.return += #roll-spped vp.reg1
scoreboard players operation #max-yaw vp.return /= #10000 vp.Num

# 撃墜されてたら変化上書き
execute if entity @s[tag=destroyed] run scoreboard players set #max-yaw vp.return 0

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"cos"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"sin"}}]

#tellraw @p [{"score" : {"name":"#max-yaw", "objective":"return"}}]
#tellraw @p [{"score" : {"name":"@s", "objective":"speedY"}}]
