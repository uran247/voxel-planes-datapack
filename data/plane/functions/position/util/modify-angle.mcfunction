#モデルの角度修正
#入力　エンティティ：@s[tag=!angle-not-changed]　
#処理　モデルとrootの角度を修正
#返り

#角度スコアが変化していた場合NBT補正(なぜかAngXを変更できなくなるバグ防止)
execute as @e[tag=target-parts] run data merge entity @s {Pose:{RightArm:[0.0f,-90.0f,-102.0f]}}

#角度スコアが変化していた場合自分と同じIDのパーツのモデル角度をスコア分にする
scoreboard players operation #ang-x reg1 = @s AngX
scoreboard players remove #ang-x reg1 9000
execute if entity @s as @e[tag=has-model,tag=target-parts] at @s store result entity @s Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x reg1
scoreboard players operation #ang-z reg1 = @s AngZ
scoreboard players remove #ang-z reg1 9000
execute if entity @s as @e[tag=has-model,tag=target-parts,distance=..10] at @s store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get #ang-z reg1

#Rootの向き修正
execute if entity @s at @s store result entity @s Rotation[0] float 0.01 run scoreboard players get @s AngY
execute if entity @s at @s store result entity @s Rotation[1] float 0.01 run scoreboard players get @s AngX

#パーツのX角度補正
scoreboard players operation #ang-z reg1 = @s AngZ
execute if entity @s as @e[tag=target-parts] at @s store result entity @s Rotation[1] float 0.01 run scoreboard players get #ang-z reg1

