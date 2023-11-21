#> weapon:util/check-block
#
# エンティティの視線上にブロックがいるかを調べる
# usage: execute as 視線主entity at 視線終端点entity run this
#
# @input
#   executer @e
#       視線終端点entity
#   position at @e
#       視線主エンティティ
#
# @output
#   storage voxel-planes:return return #ブロックが見つかった地点の座標
#   score #x vp.return
#   score #y vp.return
#   score #z vp.return
#
# @public
#

tp 0-0-0-0-9 0.0 1.0 0.0

execute facing entity @s eyes positioned ^ ^ ^25.6 run function weapon:util/check-block/step1

data remove storage voxel-planes:return return
data modify storage voxel-planes:return return set from entity 0-0-0-0-9 Pos
execute store result score #x vp.return run data get storage voxel-planes:return return[0] 100
execute store result score #y vp.return run data get storage voxel-planes:return return[1] 100
execute store result score #z vp.return run data get storage voxel-planes:return return[2] 100
#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-9"}] 

tp 0-0-0-0-9 0.0 1.0 0.0
