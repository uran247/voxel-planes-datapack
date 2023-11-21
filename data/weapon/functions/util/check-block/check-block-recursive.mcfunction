#> weapon:util/check-block/check-block-recursive
#
# 
#
# @within
#   function weapon:util/check-block-new
#   function weapon:util/check-block/check-block-recursive

# ブロック検出したら0-0-0-0-9を置く
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~

# まだブロックが見つかっておらず検知範囲からはみ出ていないなら続行
scoreboard players add #current-range vp.reg1 5
execute positioned ^ ^ ^0.5 if loaded ~ ~ ~ if block ~ ~ ~ minecraft:air if score #current-range vp.reg1 <= #range vp.reg1 run function weapon:util/check-block/check-block-recursive