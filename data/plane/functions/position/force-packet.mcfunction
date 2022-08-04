#> plane:position/force-packet
#
# エンティティのAirを強制更新してパケットを送信sなせる
#
# @within function plane:position/position

execute store result score #packet vp.reg1 run time query gametime
scoreboard players operation #packet vp.reg1 %= #2 vp.Num
execute as @e[type=!donkey,tag=target-parts,tag=plane-seat,distance=..32] store result entity @s Air short 1 run scoreboard players get #packet vp.reg1
execute as @e[tag=has-model,tag=target-parts,distance=..32] store result entity @s Pose.RightArm[0] float 0.00001 run scoreboard players get #packet vp.reg1
