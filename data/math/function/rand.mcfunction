#> math:rand
#
# キャリー付き乗算で乱数生成
#
# @output
#   #rand vp.rand
#
# @public
#

scoreboard players operation #rand vp.rand *= #31743 vp.Num
execute store result score #carry vp.rand run scoreboard players operation #rand vp.rand += #carry vp.rand
scoreboard players operation #carry vp.rand /= #65536 vp.Num
scoreboard players operation #rand vp.rand %= #65536 vp.Num
