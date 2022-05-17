#> plane:weapon/util/check-ground
# 入力　execute as 視線主entity at 視線終端点entity run this
# 処理　地面に0-0-0-0-4を置く
# @within function plane:weapon/util/display-aim

#> prv
# @private
    #declare tag ground-check
    #declare score_holder #ground-y

#準備
tp 0-0-0-0-7 0.0 0.0 0.0 0 -90
tp 0-0-0-0-8 0.0 0.01 0.0 0 90
tp 0-0-0-0-4 0.0 0.0 0.0

tag 0-0-0-0-7 add ground-check
tag 0-0-0-0-8 add ground-check

#真下のブロック位置まで0-0-0-0-4をTP
execute rotated as 0-0-0-0-8 positioned ^ ^ ^256 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^128 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^64 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^32 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^16 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^8 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^4 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^2 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=ground-check,distance=..0.1,x=0,y=0,z=0,sort=nearest] positioned ^ ^ ^0.5 unless block ~ ~ ~ #tags:torpedo-passable as 0-0-0-0-4 run tp @s[distance=..0.1,x=0,y=0,z=0] ~ ~ ~

#距離計算
execute store result score #altitude vp.return run data get entity @s Pos[1]
execute store result score #ground-y vp.reg1 run data get entity 0-0-0-0-4 Pos[1]

scoreboard players operation #altitude vp.return -= #ground-y vp.reg1

#リセット
scoreboard players reset #ground-y vp.reg1 
tag 0-0-0-0-7 remove ground-check
tag 0-0-0-0-8 remove ground-check
