#> constructor:setscore
#
# 定数スコアをセット
#
# @within tag/function load

#> public
# @public
    #declare score_holder *


scoreboard players set #0 vp.Num 0
scoreboard players set #1 vp.Num 1
scoreboard players set #2 vp.Num 2
scoreboard players set #3 vp.Num 3
scoreboard players set #4 vp.Num 4
scoreboard players set #5 vp.Num 5
scoreboard players set #6 vp.Num 6
scoreboard players set #7 vp.Num 7
scoreboard players set #8 vp.Num 8
scoreboard players set #9 vp.Num 9
scoreboard players set #10 vp.Num 10
scoreboard players set #11 vp.Num 11
scoreboard players set #12 vp.Num 12
scoreboard players set #13 vp.Num 13
scoreboard players set #14 vp.Num 14
scoreboard players set #15 vp.Num 15
scoreboard players set #16 vp.Num 16
scoreboard players set #17 vp.Num 17
scoreboard players set #18 vp.Num 18
scoreboard players set #19 vp.Num 19
scoreboard players set #20 vp.Num 20
scoreboard players set #21 vp.Num 21
scoreboard players set #30 vp.Num 30
scoreboard players set #32 vp.Num 32
scoreboard players set #40 vp.Num 40
scoreboard players set #41 vp.Num 41
scoreboard players set #45 vp.Num 45
scoreboard players set #49 vp.Num 49
scoreboard players set #50 vp.Num 50
scoreboard players set #60 vp.Num 60
scoreboard players set #64 vp.Num 64
scoreboard players set #70 vp.Num 70
scoreboard players set #71 vp.Num 71
scoreboard players set #72 vp.Num 72
scoreboard players set #75 vp.Num 75
scoreboard players set #80 vp.Num 80
scoreboard players set #86 vp.Num 86
scoreboard players set #90 vp.Num 90
scoreboard players set #100 vp.Num 100
scoreboard players set #128 vp.Num 128
scoreboard players set #141 vp.Num 141
scoreboard players set #150 vp.Num 150
scoreboard players set #178 vp.Num 178
scoreboard players set #180 vp.Num 180
scoreboard players set #182 vp.Num 182
scoreboard players set #200 vp.Num 200
scoreboard players set #256 vp.Num 256
scoreboard players set #285 vp.Num 285
scoreboard players set #288 vp.Num 288
scoreboard players set #300 vp.Num 300
scoreboard players set #359 vp.Num 359
scoreboard players set #360 vp.Num 360
scoreboard players set #400 vp.Num 400
scoreboard players set #500 vp.Num 500
scoreboard players set #512 vp.Num 512
scoreboard players set #1000 vp.Num 1000
scoreboard players set #1414 vp.Num 1414
scoreboard players set #1024 vp.Num 1024
scoreboard players set #2048 vp.Num 2048
scoreboard players set #4000 vp.Num 4000
scoreboard players set #4096 vp.Num 4096
scoreboard players set #6000 vp.Num 6000
scoreboard players set #8192 vp.Num 8192
scoreboard players set #9000 vp.Num 9000
scoreboard players set #10000 vp.Num 10000
scoreboard players set #16384 vp.Num 16384
scoreboard players set #17800 vp.Num 17800
scoreboard players set #18100 vp.Num 18100
scoreboard players set #28500 vp.Num 28500
scoreboard players set #31743 vp.Num 31743
scoreboard players set #32400 vp.Num 32400
scoreboard players set #32768 vp.Num 32768
scoreboard players set #40500 vp.Num 40500
scoreboard players set #50000 vp.Num 50000
scoreboard players set #65536 vp.Num 65536
scoreboard players set #100000 vp.Num 100000
scoreboard players set #150000 vp.Num 150000
scoreboard players set #180000 vp.Num 180000
scoreboard players set #900000 vp.Num 900000
scoreboard players set #1000000 vp.Num 1000000
scoreboard players set #1500000 vp.Num 1500000
scoreboard players set #2097152 vp.Num 2097152
scoreboard players set #2850000 vp.Num 2850000
scoreboard players set #3240000 vp.Num 3240000
scoreboard players set #32400000 vp.Num 32400000

scoreboard players set #-1 vp.Num -1
scoreboard players set #-2 vp.Num -2
scoreboard players set #-3 vp.Num -3
scoreboard players set #-4 vp.Num -4
scoreboard players set #-5 vp.Num -5
scoreboard players set #-6 vp.Num -6
scoreboard players set #-7 vp.Num -7
scoreboard players set #-8 vp.Num -8
scoreboard players set #-9 vp.Num -9
scoreboard players set #-90 vp.Num -90
scoreboard players set #-100 vp.Num -100
scoreboard players set #-180 vp.Num -180
scoreboard players set #-200 vp.Num -200
scoreboard players set #-400 vp.Num -400
scoreboard players set #-1000 vp.Num -1000
scoreboard players set #-4000 vp.Num -4000
scoreboard players set #-9000 vp.Num -9000
scoreboard players set #-10000 vp.Num -10000
scoreboard players set #-17800 vp.Num -17800
scoreboard players set #-18000 vp.Num -18000
scoreboard players set #-18100 vp.Num -18100
scoreboard players set #-100000 vp.Num -100000
scoreboard players set #-1000000 vp.Num -1000000

#scoreboard players set #max max-entity 10


scoreboard players set @e[tag=Trigonometric,distance=..3,x=0,y=0,z=0,limit=1] vp.input1 235
execute as @e[tag=Trigonometric,distance=..3,x=0,y=0,z=0,limit=1] run function math:rand-init
