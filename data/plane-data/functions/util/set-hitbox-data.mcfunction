#> plane-data:util/set-hitbox-data
#
# @input
#   executer @s[tag=plane-hitbox,tag=plane-init]
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