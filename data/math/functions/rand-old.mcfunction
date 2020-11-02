#15bitM系列乱数を生成
scoreboard players operation #15 rand = #14 rand
scoreboard players operation #14 rand = #13 rand
scoreboard players operation #13 rand = #12 rand
scoreboard players operation #12 rand = #11 rand
scoreboard players operation #11 rand = #10 rand
scoreboard players operation #10 rand = #9 rand
scoreboard players operation #9 rand = #8 rand
scoreboard players operation #8 rand = #7 rand
scoreboard players operation #7 rand = #6 rand
scoreboard players operation #6 rand = #5 rand
scoreboard players operation #5 rand = #4 rand
scoreboard players operation #4 rand = #3 rand
scoreboard players operation #3 rand = #2 rand
scoreboard players operation #2 rand = #1 rand
scoreboard players operation #1 rand = #0 rand

scoreboard players operation #0 rand += #15 rand
scoreboard players operation #0 rand %= #2 Num

scoreboard players operation #rand rand = #0 rand

scoreboard players operation #reg rand = #1 rand
scoreboard players operation #reg rand *= #2 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #2 rand
scoreboard players operation #reg rand *= #4 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #3 rand
scoreboard players operation #reg rand *= #8 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #4 rand
scoreboard players operation #reg rand *= #16 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #5 rand
scoreboard players operation #reg rand *= #32 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #6 rand
scoreboard players operation #reg rand *= #64 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #7 rand
scoreboard players operation #reg rand *= #128 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #8 rand
scoreboard players operation #reg rand *= #256 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #9 rand
scoreboard players operation #reg rand *= #512 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #10 rand
scoreboard players operation #reg rand *= #1024 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #11 rand
scoreboard players operation #reg rand *= #2048 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #12 rand
scoreboard players operation #reg rand *= #4096 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #13 rand
scoreboard players operation #reg rand *= #8192 Num
scoreboard players operation #rand rand += #reg rand

scoreboard players operation #reg rand = #14 rand
scoreboard players operation #reg rand *= #16384 Num
scoreboard players operation #rand rand += #reg rand

