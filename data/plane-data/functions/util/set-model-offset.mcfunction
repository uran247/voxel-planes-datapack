#> plane-data:util/set-model-offset
#
# @input
#   executer @s[tag=plane-hitbox]
#   storage voxel-planes:input
#
# @within function plane-data:**
#

#> private
#
# @private
    #declare tag plane-init
    #declare tag plane-rightwing
    #declare tag plane-leftwing

#offset設定
execute store result score @s[tag=plane-rightwing] vp.offsetX run data get storage voxel-planes:input input.model-data.rightwing.offset[0] 1000
execute store result score @s[tag=plane-rightwing] vp.offsetY run data get storage voxel-planes:input input.model-data.rightwing.offset[1] 1000
execute store result score @s[tag=plane-rightwing] vp.offsetZ run data get storage voxel-planes:input input.model-data.rightwing.offset[2] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetX run data get storage voxel-planes:input input.model-data.leftwing.offset[0] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetY run data get storage voxel-planes:input input.model-data.leftwing.offset[1] 1000
execute store result score @s[tag=plane-leftwing] vp.offsetZ run data get storage voxel-planes:input input.model-data.leftwing.offset[2] 1000
