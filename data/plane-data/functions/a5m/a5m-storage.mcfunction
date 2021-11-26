#> plane-data:a5m/a5m-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon a5m set value {base:{},additional:{}}
data modify storage voxel-planes:plane a5m set value {}

#飛行機データセット
data modify storage voxel-planes:plane a5m.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane a5m.plane-data.tier set value 1
data modify storage voxel-planes:plane a5m.plane-data.flight-model.weight set value 1500.0
data modify storage voxel-planes:plane a5m.plane-data.flight-model.speed set value {max-speed:435f,cruise-speed:303f,climb-rate:14f,stall-speed:95f}
data modify storage voxel-planes:plane a5m.plane-data.flight-model.engine set value {type:recipro,horse-power:710f,number:1}
data modify storage voxel-planes:plane a5m.plane-data.flight-model.turn-rate set value {pitch:50f,yaw:40f,roll:96f}
data modify storage voxel-planes:plane a5m.plane-data.flight-model.energy-loss-rate set value 0.2
data modify storage voxel-planes:plane a5m.plane-data.model-data.body set value {parking-cmd:85,rolling-cmd:86,flying-cmd:86}
data modify storage voxel-planes:plane a5m.plane-data.model-data.landing-pitch set value -14.0
data modify storage voxel-planes:plane a5m.plane-data.hp set value {engine:50d,body:50d,aileron:50d,elevetor:40d,radder:40d}
data modify storage voxel-planes:plane a5m.plane-data.hitbox set value {}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {engine:{size:1,offset:[0d,-0.2d,2.7d]}}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {aileron-r:{size:1,offset:[-3d,-0.4d,1.4d]},aileron-l:{size:1,offset:[3d,-0.4d,1.4d]}}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {elevator-r:{size:1,offset:[-0.9d,-0.3d,-3.1d]},elevator-l:{size:1,offset:[0.9d,-0.3d,-3.1d]}}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {radder:{size:1,offset:[0d,0.5d,-3.5d]}}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {cockpit:{size:1,offset:[0d,0.5d,1.3d]}}
data modify storage voxel-planes:plane a5m.plane-data.hitbox merge value {body:{size:1,offset:[0d,0.5d,1.3d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a5m.base.gun set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.5d,bullets:[{offset:[0.12d,0.22d,3.12d]},{offset:[-0.19d,0.22d,3.12d]}]}}
