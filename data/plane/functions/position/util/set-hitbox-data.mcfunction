#> plane:position/util/set-hitbox-data
#
# 召喚したhitboxにsize、offsetを入れる
#
# @input
#   executer @e[type=slime,tag=plane-init,tag=plane-hitbox]
#
# @within function plane:position/summon-hitbox
#

data modify entity @s Size set from storage voxel-planes:input input.size
execute store result score @s vp.offsetX run data get storage voxel-planes:input input.offset[0] 1000
execute store result score @s vp.offsetY run data get storage voxel-planes:input input.offset[1] 1000
execute store result score @s vp.offsetZ run data get storage voxel-planes:input input.offset[2] 1000
