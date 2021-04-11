#> plane-data:util/set-hitbox-data
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
    #declare tag plane-body

#max health設定
execute store result entity @s[tag=body] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get storage voxel-planes:input input.hp.body
execute store result entity @s[tag=engine] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get storage voxel-planes:input input.hp.engine
execute store result entity @s[tag=aileron] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get storage voxel-planes:input input.hp.aileron
execute store result entity @s[tag=elevetor] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get storage voxel-planes:input input.hp.elevetor
execute store result entity @s[tag=radder] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get storage voxel-planes:input input.hp.radder

#health設定
execute store result entity @s[tag=body] Health float 1 run data get storage voxel-planes:input input.hp.body
execute store result entity @s[tag=engine] Health float 1 run data get storage voxel-planes:input input.hp.engine
execute store result entity @s[tag=aileron] Health float 1 run data get storage voxel-planes:input input.hp.aileron
execute store result entity @s[tag=elevetor] Health float 1 run data get storage voxel-planes:input input.hp.elevetor
execute store result entity @s[tag=radder] Health float 1 run data get storage voxel-planes:input input.hp.radder

#offset設定
execute store result score @s[tag=body] vp.offsetX run data get storage voxel-planes:input input.hitbox.body.offset[0] 1000
execute store result score @s[tag=body] vp.offsetY run data get storage voxel-planes:input input.hitbox.body.offset[1] 1000
execute store result score @s[tag=body] vp.offsetZ run data get storage voxel-planes:input input.hitbox.body.offset[2] 1000
execute store result score @s[tag=engine] vp.offsetX run data get storage voxel-planes:input input.hitbox.engine.offset[0] 1000
execute store result score @s[tag=engine] vp.offsetY run data get storage voxel-planes:input input.hitbox.engine.offset[1] 1000
execute store result score @s[tag=engine] vp.offsetZ run data get storage voxel-planes:input input.hitbox.engine.offset[2] 1000
execute store result score @s[tag=engine-r] vp.offsetX run data get storage voxel-planes:input input.hitbox.engine-r.offset[0] 1000
execute store result score @s[tag=engine-r] vp.offsetY run data get storage voxel-planes:input input.hitbox.engine-r.offset[1] 1000
execute store result score @s[tag=engine-r] vp.offsetZ run data get storage voxel-planes:input input.hitbox.engine-r.offset[2] 1000
execute store result score @s[tag=engine-l] vp.offsetX run data get storage voxel-planes:input input.hitbox.engine-l.offset[0] 1000
execute store result score @s[tag=engine-l] vp.offsetY run data get storage voxel-planes:input input.hitbox.engine-l.offset[1] 1000
execute store result score @s[tag=engine-l] vp.offsetZ run data get storage voxel-planes:input input.hitbox.engine-l.offset[2] 1000
execute store result score @s[tag=aileron-r] vp.offsetX run data get storage voxel-planes:input input.hitbox.aileron-r.offset[0] 1000
execute store result score @s[tag=aileron-r] vp.offsetY run data get storage voxel-planes:input input.hitbox.aileron-r.offset[1] 1000
execute store result score @s[tag=aileron-r] vp.offsetZ run data get storage voxel-planes:input input.hitbox.aileron-r.offset[2] 1000
execute store result score @s[tag=aileron-l] vp.offsetX run data get storage voxel-planes:input input.hitbox.aileron-l.offset[0] 1000
execute store result score @s[tag=aileron-l] vp.offsetY run data get storage voxel-planes:input input.hitbox.aileron-l.offset[1] 1000
execute store result score @s[tag=aileron-l] vp.offsetZ run data get storage voxel-planes:input input.hitbox.aileron-l.offset[2] 1000
execute store result score @s[tag=elevator-r] vp.offsetX run data get storage voxel-planes:input input.hitbox.elevator-r.offset[0] 1000
execute store result score @s[tag=elevator-r] vp.offsetY run data get storage voxel-planes:input input.hitbox.elevator-r.offset[1] 1000
execute store result score @s[tag=elevator-r] vp.offsetZ run data get storage voxel-planes:input input.hitbox.elevator-r.offset[2] 1000
execute store result score @s[tag=elevator-l] vp.offsetX run data get storage voxel-planes:input input.hitbox.elevator-l.offset[0] 1000
execute store result score @s[tag=elevator-l] vp.offsetY run data get storage voxel-planes:input input.hitbox.elevator-l.offset[1] 1000
execute store result score @s[tag=elevator-l] vp.offsetZ run data get storage voxel-planes:input input.hitbox.elevator-l.offset[2] 1000
execute store result score @s[tag=radder] vp.offsetX run data get storage voxel-planes:input input.hitbox.radder.offset[0] 1000
execute store result score @s[tag=radder] vp.offsetY run data get storage voxel-planes:input input.hitbox.radder.offset[1] 1000
execute store result score @s[tag=radder] vp.offsetZ run data get storage voxel-planes:input input.hitbox.radder.offset[2] 1000
execute store result score @s[tag=cockpit] vp.offsetX run data get storage voxel-planes:input input.hitbox.cockpit.offset[0] 1000
execute store result score @s[tag=cockpit] vp.offsetY run data get storage voxel-planes:input input.hitbox.cockpit.offset[1] 1000
execute store result score @s[tag=cockpit] vp.offsetZ run data get storage voxel-planes:input input.hitbox.cockpit.offset[2] 1000
