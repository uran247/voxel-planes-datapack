#キャリー付き乗算で乱数生成
# #rand rand:乱数　#carry rand:キャリー
scoreboard players operation #rand rand *= #31743 Num
execute store result score #carry rand run scoreboard players operation #rand rand += #carry rand
scoreboard players operation #carry rand /= #65536 Num
scoreboard players operation #rand rand %= #65536 Num
