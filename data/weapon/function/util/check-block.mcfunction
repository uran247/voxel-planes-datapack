#> weapon:util/check-block
#
# エンティティの視線上にブロックがいるかを調べる
# usage: execute as 視線主entity at 視線終端点entity run this
#
# @input
#   executer @e
#       視線主entity
#   at @e
#       視線主entity
#   score #range vp.input
#       何ブロック先までチェックするか[block*10]
#
# @output
#   storage voxel-planes:return return #ブロックが見つかった地点の座標
#
# @public
   #declare score_holder #current-range


#> within
# @within
#   function weapon:util/check-block/check-block-recursive
#   function weapon:util/check-block
   #declare score_holder #range

tp 0-0-0-0-9 0.0 1.0 0.0

scoreboard players set #current-range vp.reg1 0
function weapon:util/check-block/check-block-recursive
data remove storage voxel-planes:return return
data modify storage voxel-planes:return return set from entity 0-0-0-0-9 Pos

tp 0-0-0-0-9 0.0 1.0 0.0
