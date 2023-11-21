#> plane:position/move-to-offset
#
# @input
#   executer @e[tag=has-offset,tag=target-parts]
#   position @e[tag=has-offset,tag=target-parts]
#   score @s vp.new-offsetX
#   score @s vp.new-offsetY
#   score @s vp.offsetZ
#
# @public

data remove storage voxel-planes:input input
execute store result storage voxel-planes:input input.x float 0.001 run scoreboard players get @s vp.new-offsetX
execute store result storage voxel-planes:input input.y float 0.001 run scoreboard players get @s vp.new-offsetY
execute store result storage voxel-planes:input input.z float 0.001 run scoreboard players get @s vp.offsetZ

execute as @s at @s run function util:scoretp with storage voxel-planes:input input
