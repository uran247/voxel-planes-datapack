#> plane:move/plane-move/flying/set-max-pitch
#
# ピッチの変化量を設定
# pitch-speed = pitch-speed * cos^2(roll) + yaw-speed * sin^2(roll)
# elevetorの数を数えて、1以下なら変化量は半分 撃墜されてたら変化量は0
#
# @input
#   executer @e[tag=plane-root]
#
# @output
#   score #max-pitch vp.return
#       1tickにできる最大旋回角度
#
# @within
#   function plane:move/plane-move/turn-rolling
#   function plane:move/plane-move/turn-flying
    #declare score_holder #max-pitch #1tickにできる最大旋回角度
    #declare score_holder #gross-weight #機体の総重量を示す

#> private
# @private
    #declare score_holder #yaw-speed #デフォルトのヨー速度を表す

#ピッチの変化量を設定
#input: entity:機体
#return: スコア:#max-pitch vp.return

# yaw,roll,pitch速度取得
scoreboard players operation #max-pitch vp.return = @s vp.pitch-speed
scoreboard players operation #yaw-speed vp.reg1 = @s vp.yaw-speed

# yaw,roll,pitch速度補正(旋回速度*通常時重量/総重量)
scoreboard players operation #gross-weight vp.reg1 = @s vp.weight
scoreboard players operation #gross-weight vp.reg1 += @s vp.add-weight
scoreboard players operation #max-pitch vp.return *= @s vp.weight
scoreboard players operation #max-pitch vp.return /= #gross-weight vp.reg1
scoreboard players operation #yaw-speed vp.reg1 *= @s vp.weight
scoreboard players operation #yaw-speed vp.reg1 /= #gross-weight vp.reg1

# radder, pitch破損時補正
execute if entity @s[scores={vp.elevator=0}] run scoreboard players operation #max-pitch vp.return /= #2 vp.Num
execute if entity @s[scores={vp.radder=0}] run scoreboard players operation #yaw-speed vp.reg1 /= #2 vp.Num

# roll角に応じてpitchとyawをスワップ
scoreboard players operation #yaw-speed vp.reg1 *= @s vp.sin
scoreboard players operation #yaw-speed vp.reg1 /= #1000 vp.Num
scoreboard players operation #yaw-speed vp.reg1 *= @s vp.sin
scoreboard players operation #yaw-speed vp.reg1 /= #1000 vp.Num

scoreboard players operation #max-pitch vp.return *= @s vp.cos
scoreboard players operation #max-pitch vp.return /= #1000 vp.Num
scoreboard players operation #max-pitch vp.return *= @s vp.cos
scoreboard players operation #max-pitch vp.return /= #1000 vp.Num

scoreboard players operation #max-pitch vp.return += #yaw-speed vp.reg1

execute if entity @s[tag=destroyed] run scoreboard players set #max-pitch vp.return 0
