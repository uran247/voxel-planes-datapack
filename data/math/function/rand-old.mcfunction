#15bitM系列乱数を生成
scoreboard players operation #15 vp.rand = #14 vp.rand
scoreboard players operation #14 vp.rand = #13 vp.rand
scoreboard players operation #13 vp.rand = #12 vp.rand
scoreboard players operation #12 vp.rand = #11 vp.rand
scoreboard players operation #11 vp.rand = #10 vp.rand
scoreboard players operation #10 vp.rand = #9 vp.rand
scoreboard players operation #9 vp.rand = #8 vp.rand
scoreboard players operation #8 vp.rand = #7 vp.rand
scoreboard players operation #7 vp.rand = #6 vp.rand
scoreboard players operation #6 vp.rand = #5 vp.rand
scoreboard players operation #5 vp.rand = #4 vp.rand
scoreboard players operation #4 vp.rand = #3 vp.rand
scoreboard players operation #3 vp.rand = #2 vp.rand
scoreboard players operation #2 vp.rand = #1 vp.rand
scoreboard players operation #1 vp.rand = #0 vp.rand

scoreboard players operation #0 vp.rand += #15 vp.rand
scoreboard players operation #0 vp.rand %= #2 vp.Num

scoreboard players operation #rand vp.rand = #0 vp.rand

scoreboard players operation #reg vp.rand = #1 vp.rand
scoreboard players operation #reg vp.rand *= #2 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #2 vp.rand
scoreboard players operation #reg vp.rand *= #4 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #3 vp.rand
scoreboard players operation #reg vp.rand *= #8 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #4 vp.rand
scoreboard players operation #reg vp.rand *= #16 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #5 vp.rand
scoreboard players operation #reg vp.rand *= #32 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #6 vp.rand
scoreboard players operation #reg vp.rand *= #64 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #7 vp.rand
scoreboard players operation #reg vp.rand *= #128 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #8 vp.rand
scoreboard players operation #reg vp.rand *= #256 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #9 vp.rand
scoreboard players operation #reg vp.rand *= #512 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #10 vp.rand
scoreboard players operation #reg vp.rand *= #1024 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #11 vp.rand
scoreboard players operation #reg vp.rand *= #2048 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #12 vp.rand
scoreboard players operation #reg vp.rand *= #4096 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #13 vp.rand
scoreboard players operation #reg vp.rand *= #8192 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

scoreboard players operation #reg vp.rand = #14 vp.rand
scoreboard players operation #reg vp.rand *= #16384 vp.Num
scoreboard players operation #rand vp.rand += #reg vp.rand

