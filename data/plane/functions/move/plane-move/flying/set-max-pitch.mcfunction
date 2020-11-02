#ピッチの変化量を設定
#input: entity:機体
#return: スコア:#max-pitch return
#TODO: ピッチ速度をsin * sin * yaw + cos * cos * pitchにする

#yaw,roll,pitch速度取得
scoreboard players operation #max-pitch return = @s pitch-speed
scoreboard players operation #yaw-speed reg1 = @s yaw-speed

#yaw,roll,pitch速度補正
scoreboard players operation #max-pitch return += @s yaw-speed-cor
scoreboard players operation #yaw-speed reg1 += @s yaw-speed-cor

#radder, pitch破損時補正
execute if entity @s[scores={elevetor=0}] run scoreboard players operation #max-pitch return /= #2 Num
execute if entity @s[scores={radder=0}] run scoreboard players operation #yaw-speed reg1 /= #2 Num

#roll角に応じてpitchとyawをスワップ
scoreboard players operation #yaw-speed reg1 *= @s sin
scoreboard players operation #yaw-speed reg1 /= #1000 Num
scoreboard players operation #yaw-speed reg1 *= @s sin
scoreboard players operation #yaw-speed reg1 /= #1000 Num

scoreboard players operation #max-pitch return *= @s cos
scoreboard players operation #max-pitch return /= #1000 Num
scoreboard players operation #max-pitch return *= @s cos
scoreboard players operation #max-pitch return /= #1000 Num

scoreboard players operation #max-pitch return += #yaw-speed reg1

execute if entity @s[tag=destroyed] run scoreboard players set #max-pitch return 0
