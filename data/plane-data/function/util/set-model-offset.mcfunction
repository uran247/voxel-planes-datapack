#> plane-data:util/set-model-offset
#
# @input
#   executer @s[tag=plane-hitbox]
#   storage voxel-planes:input
#
# @within function plane-data:**
#

#offset設定
execute store result score @s[tag=plane-rightwing] vp.offsetX run data get storage voxel-planes:input input.model-data.rightwing.offset[0] 1000
execute store result score @s[tag=plane-rightwing] vp.offsetY run data get storage voxel-planes:input input.model-data.rightwing.offset[1] 1000
execute store result score @s[tag=plane-rightwing] vp.offsetZ run data get storage voxel-planes:input input.model-data.rightwing.offset[2] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetX run data get storage voxel-planes:input input.model-data.leftwing.offset[0] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetY run data get storage voxel-planes:input input.model-data.leftwing.offset[1] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetZ run data get storage voxel-planes:input input.model-data.leftwing.offset[2] 1000
execute store result score @s[tag=plane-tail] vp.offsetX run data get storage voxel-planes:input input.model-data.tail.offset[0] 1000
execute store result score @s[tag=plane-tail] vp.offsetY run data get storage voxel-planes:input input.model-data.tail.offset[1] 1000
execute store result score @s[tag=plane-tail] vp.offsetZ run data get storage voxel-planes:input input.model-data.tail.offset[2] 1000
