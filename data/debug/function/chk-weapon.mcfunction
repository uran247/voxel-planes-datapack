#> debug:chk-weapon
#
# execute as @e[tag=plane-root] at @s run function debug:chk-weapon
# 

#data modify storage minecraft:plane-datapack debug.chkoffset set value [-2.6d,-0.5d,0d]
execute as 0-0-0-0-a store result score @s vp.offsetX run data get storage minecraft:plane-datapack debug.chkoffset[0] 1000
execute as 0-0-0-0-a store result score @s vp.offsetY run data get storage minecraft:plane-datapack debug.chkoffset[1] 1000
execute as 0-0-0-0-a store result score @s vp.offsetZ run data get storage minecraft:plane-datapack debug.chkoffset[2] 1000
scoreboard players operation 0-0-0-0-a vp.input1 = @s vp.AngZ
tp 0-0-0-0-a ^ ^ ^ ~90 ~

#execute as 0-0-0-0-a at @s rotated ~-90 ~ run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/calc-displacement
execute at @s as 0-0-0-0-a run function plane:position/calc-offset
execute at @s as 0-0-0-0-a run function plane:position/util/move-parts

tp @e[tag=wpn-test] 0-0-0-0-a
#角度スコアが変化していた場合自分と同じIDのパーツのモデル角度をスコア分にする
scoreboard players operation #ang-x vp.reg1 = @s vp.AngX
scoreboard players remove #ang-x vp.reg1 9000
execute as @e[tag=wpn-test] store result entity @s Pose.RightArm[2] float 0.01 run scoreboard players get #ang-x vp.reg1
scoreboard players operation #ang-z vp.reg1 = @s vp.AngZ
scoreboard players remove #ang-z vp.reg1 9000
execute as @e[tag=wpn-test] store result entity @s Pose.RightArm[1] float 0.01 run scoreboard players get #ang-z vp.reg1

scoreboard players reset #ang-x vp.reg1
scoreboard players reset #ang-z vp.reg1
tp 0-0-0-0-a 0 1 0
execute as 0-0-0-0-a run tag @s remove offset-base

