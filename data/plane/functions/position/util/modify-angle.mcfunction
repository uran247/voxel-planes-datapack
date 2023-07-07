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
execute as @e[tag=has-model,tag=target-parts,distance=..32] store result entity @s Rotation[1] float 0.01 run scoreboard players get #ang-x vp.reg1

scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
data modify storage minecraft:plane-datapack temporary.Angle set value {angle:0,axis:[0f,0f,1f]}
execute store result storage minecraft:plane-datapack temporary.Angle.angle float 0.0001745 run scoreboard players get #ang-z vp.reg1
execute as @e[type=item_display,tag=has-model,tag=target-parts,distance=..10] run data modify entity @s transformation.left_rotation set from storage minecraft:plane-datapack temporary.Angle
execute as @e[type=block_display,tag=target-parts,distance=..10] run data modify entity @s transformation.right_rotation set from storage minecraft:plane-datapack temporary.Angle

#Rootの向き修正
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s vp.AngX

#パーツのX角度補正
scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
execute as @e[type=!item_display,type=!block_display,tag=target-parts,distance=..32] store result entity @s Rotation[1] float 0.01 run scoreboard players get #ang-z vp.reg1
