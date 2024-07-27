#魚雷の向き変更
#入力　エンティティ：魚雷
execute at @s run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=!sailing] at @s run tp @s ~ ~ ~ ~ ~0.4
execute if entity @s[tag=sailing,x_rotation=1..90] at @s run tp @s ~ ~ ~ ~ ~-1
execute if entity @s[tag=sailing,x_rotation=-1..1] at @s run tp @s ~ ~ ~ ~ 0
execute store result score #x-ang vp.reg1 run data get entity @s Rotation[1] 1
scoreboard players remove #x-ang vp.reg1 90
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #x-ang vp.reg1
