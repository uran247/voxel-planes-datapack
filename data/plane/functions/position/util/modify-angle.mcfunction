#> plane:position/util/modify-angle
#
# モデルとrootの角度を修正
#
# @input
#   executer @e[tag=plane-root,tag=!angle-not-changed]
#
# @within plane:position/position
# @private
    #declare score_holder #ang-x #モデルのピッチ角度
    #declare score_holder #ang-z #モデルのロール角度

#Pose補正(なぜかAngXを変更できなくなるバグ防止)
execute as @e[tag=target-parts,tag=has-model,distance=..32] run data merge entity @s {Pose:{RightArm:[0.0f,-90.0f,-102.0f]}}

#角度スコアが変化していた場合自分と同じIDのパーツのモデル角度をスコア分にする
scoreboard players operation #ang-x vp.reg1 = @s vp.AngX
scoreboard players remove #ang-x vp.reg1 9000
execute as @e[tag=has-model,tag=target-parts,distance=..32] store result entity @s Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x vp.reg1
scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
scoreboard players remove #ang-z vp.reg1 9000
execute as @e[tag=has-model,tag=target-parts,distance=..10] store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get #ang-z vp.reg1

#Rootの向き修正
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s vp.AngX

#パーツのX角度補正
scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
execute as @e[tag=target-parts,distance=..32] store result entity @s Rotation[1] float 0.01 run scoreboard players get #ang-z vp.reg1
