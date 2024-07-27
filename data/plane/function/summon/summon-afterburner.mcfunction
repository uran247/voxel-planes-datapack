#> plane:summon/summon-afterburner
#
# @input
#    execute @e[tag=plane-root,tag=plane-init]
#    storage voxel-planes:input input
#
# @within function plane-data:**
    #declare tag plane-init
    #declare tag plane-afterburner1
    #declare tag plane-afterburner2

#afteburner召喚
execute if data storage voxel-planes:input input.model-data.afterburner[0] run summon block_display ~ ~ ~ {Tags:[plane-afterburner,plane-afterburner1,plane-init,plane,has-offset,entity-nohit],block_state:{Name:"minecraft:air",Properties:{east:"true",north:"true",south:"true",west:"true",up:"true"}},interpolation_duration:0,view_range:4.0f,transformation:{left_rotation:{angle:0f,axis:[1f,0f,0f]},right_rotation:{angle:0f,axis:[0f,0f,1f]},scale:[1f,1f,1f],translation:[0f,1.5f,0f]}}
execute if data storage voxel-planes:input input.model-data.afterburner[1] run summon block_display ~ ~ ~ {Tags:[plane-afterburner,plane-afterburner2,plane-init,plane,has-offset,entity-nohit],block_state:{Name:"minecraft:air",Properties:{east:"true",north:"true",south:"true",west:"true",up:"true"}},interpolation_duration:0,view_range:4.0f,transformation:{left_rotation:{angle:0f,axis:[1f,0f,0f]},right_rotation:{angle:0f,axis:[0f,0f,1f]},scale:[1f,1f,1f],translation:[0f,1.5f,0f]}}

#afterburnerの表示情報設定
execute if data storage voxel-planes:input input.model-data.afterburner[0] as @e[tag=plane-init,tag=plane-afterburner1,distance=..1] store result score @s vp.offsetX run data get storage voxel-planes:input input.model-data.afterburner[0].translation[0] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[0] as @e[tag=plane-init,tag=plane-afterburner1,distance=..1] store result score @s vp.offsetY run data get storage voxel-planes:input input.model-data.afterburner[0].translation[1] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[0] as @e[tag=plane-init,tag=plane-afterburner1,distance=..1] store result score @s vp.offsetZ run data get storage voxel-planes:input input.model-data.afterburner[0].translation[2] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[0] as @e[tag=plane-init,tag=plane-afterburner1,distance=..1] run data modify entity @s transformation.scale set from storage voxel-planes:input input.model-data.afterburner[0].scale

execute if data storage voxel-planes:input input.model-data.afterburner[1] as @e[tag=plane-init,tag=plane-afterburner2,distance=..1] store result score @s vp.offsetX run data get storage voxel-planes:input input.model-data.afterburner[1].translation[0] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[1] as @e[tag=plane-init,tag=plane-afterburner2,distance=..1] store result score @s vp.offsetY run data get storage voxel-planes:input input.model-data.afterburner[1].translation[1] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[1] as @e[tag=plane-init,tag=plane-afterburner2,distance=..1] store result score @s vp.offsetZ run data get storage voxel-planes:input input.model-data.afterburner[1].translation[2] 1000
execute if data storage voxel-planes:input input.model-data.afterburner[1] as @e[tag=plane-init,tag=plane-afterburner2,distance=..1] run data modify entity @s transformation.scale set from storage voxel-planes:input input.model-data.afterburner[1].scale

#afterburner ride
execute if data storage voxel-planes:input input.model-data.afterburner[0] run ride @e[tag=plane-init,tag=plane-afterburner1,distance=..1,limit=1] mount @s 
execute if data storage voxel-planes:input input.model-data.afterburner[1] run ride @e[tag=plane-init,tag=plane-afterburner2,distance=..1,limit=1] mount @s 