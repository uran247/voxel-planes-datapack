#> weapon:util/check-block/check-block-recursive
#
# 
#
# @within
#   function weapon:util/check-block
#   function weapon:util/check-block/check-block-recursive

# ブロック検出したら0-0-0-0-9を置く
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-9 ~ ~ ~

# まだブロックが見つかっておらず検知範囲からはみ出ていないなら続行
scoreboard players add #current-range vp.reg1 2
execute positioned ^ ^ ^0.2 if loaded ~ ~ ~ if block ~ ~ ~ minecraft:air if score #current-range vp.reg1 <= #range vp.reg1 run function weapon:util/check-block/check-block-recursive