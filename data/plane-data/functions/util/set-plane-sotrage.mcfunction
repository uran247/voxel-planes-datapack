#> plane-data:util/set-plane-sotrage
#
# @input
#   storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
#   storage voxel-planes:input
#
# @within function plane-data:**
#

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:input input
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status set from storage voxel-planes:input input.hitbox

execute if data storage voxel-planes:input input.hitbox.body run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body.hp set from storage voxel-planes:input input.hitbox.body.max-hp
execute if data storage voxel-planes:input input.hitbox.engine run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine.hp set from storage voxel-planes:input input.hitbox.engine.max-hp
execute if data storage voxel-planes:input input.hitbox.engine-r run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r.hp set from storage voxel-planes:input input.hitbox.engine-r.max-hp
execute if data storage voxel-planes:input input.hitbox.engine-l run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l.hp set from storage voxel-planes:input input.hitbox.engine-l.max-hp
execute if data storage voxel-planes:input input.hitbox.aileron-r run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r.hp set from storage voxel-planes:input input.hitbox.aileron-r.max-hp
execute if data storage voxel-planes:input input.hitbox.aileron-l run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l.hp set from storage voxel-planes:input input.hitbox.aileron-l.max-hp
execute if data storage voxel-planes:input input.hitbox.elevator run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator.hp set from storage voxel-planes:input input.hitbox.elevator.max-hp
execute if data storage voxel-planes:input input.hitbox.elevator-r run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r.hp set from storage voxel-planes:input input.hitbox.elevator-r.max-hp
execute if data storage voxel-planes:input input.hitbox.elevator-l run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l.hp set from storage voxel-planes:input input.hitbox.elevator-l.max-hp
execute if data storage voxel-planes:input input.hitbox.radder run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder.hp set from storage voxel-planes:input input.hitbox.radder.max-hp
execute if data storage voxel-planes:input input.hitbox.radder-r run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r.hp set from storage voxel-planes:input input.hitbox.radder-r.max-hp
execute if data storage voxel-planes:input input.hitbox.radder-l run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l.hp set from storage voxel-planes:input input.hitbox.radder-l.max-hp
