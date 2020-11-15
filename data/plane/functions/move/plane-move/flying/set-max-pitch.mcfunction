#ピッチの変化量を設定
#input: entity:機体
#return: スコア:#max-pitch vp.return
#TODO: ピッチ速度をsin * vp.sin * yaw + vp.cos * vp.cos * pitchにする

#yaw,roll,pitch速度取得
scoreboard players operation #max-pitch vp.return = @s vp.pitch-speed
scoreboard players operation #yaw-speed vp.reg1 = @s vp.yaw-speed

#yaw,roll,pitch速度補正
scoreboard players operation #max-pitch vp.return += @s vp.pitch-spd-cor
scoreboard players operation #yaw-speed vp.reg1 += @s vp.yaw-spd-cor

#radder, pitch破損時補正
execute if entity @s[scores={vp.elevetor=0}] run scoreboard players operation #max-pitch vp.return /= #2 vp.Num
execute if entity @s[scores={vp.radder=0}] run scoreboard players operation #yaw-speed vp.reg1 /= #2 vp.Num

#roll角に応じてpitchとyawをスワップ
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
