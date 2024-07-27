#> plane:weapon/util/display-aim/display-aim
#
# @input
#   as @e[tag=plane-root]
#   at @e[tag=plane-root]
#
# @within function plane:weapon/weapon-manager

#> private
# @private
    #declare score_holder #distance
    #declare score_holder #horizontal-speed
    #declare score_holder #time
    #declare score_holder #speedY
    #declare score_holder #speed-x
    #declare score_holder #speed-z

#> calc-aim
# @within
#   function plane:weapon/util/display-aim/**
#   function plane:weapon/util/check-ground
#   function plane:weapon/util/calc-droptime
#   function plane:weapon/util/calc-droptime-recursion
    #declare score_holder #altitude #地面までの距離[m]
    #declare score_holder #drop-time
    #declare score_holder #drop-speed

# 地面までの距離用変数セット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from entity @s Pos

# 着弾までの時間用変数セット
scoreboard players operation #drop-speed vp.input = @s vp.speed
scoreboard players operation #drop-speed vp.input *= @s vp.speedY
scoreboard players operation #drop-speed vp.input /= #-10000 vp.Num

# 着弾位置計算用変数セット
scoreboard players operation #speed-x vp.input = @s vp.speedX
scoreboard players operation #speed-z vp.input = @s vp.speedZ
scoreboard players operation #speed-x vp.input *= @s vp.speed
scoreboard players operation #speed-z vp.input *= @s vp.speed
scoreboard players operation #speed-x vp.input /= #10000 vp.Num
scoreboard players operation #speed-z vp.input /= #10000 vp.Num

# 着弾位置の計算とパーティクル表示
execute as @e[tag=block-checker,distance=..1,x=0,y=1,z=0,limit=1] run function plane:weapon/util/display-aim/calc-ground0-and-display
