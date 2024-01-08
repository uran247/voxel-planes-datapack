#> plane-data:ki-43/ki43-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon ki43 set value {base:{},additional:{}}
data modify storage voxel-planes:plane ki43 set value {}

#飛行機データセット
data modify storage voxel-planes:plane ki43.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane ki43.plane-data.tier set value 1
data modify storage voxel-planes:plane ki43.plane-data.flight-model.weight set value 2590.0
data modify storage voxel-planes:plane ki43.plane-data.flight-model.speed set value {max-speed:515f,cruise-speed:355f,climb-rate:17.3f,stall-speed:103f}
data modify storage voxel-planes:plane ki43.plane-data.flight-model.engine set value {type:recipro,horse-power:1150f,number:1}
data modify storage voxel-planes:plane ki43.plane-data.flight-model.turn-rate set value {pitch:46f,yaw:40f,roll:130f}
data modify storage voxel-planes:plane ki43.plane-data.flight-model.energy-loss-rate set value 0.2
data modify storage voxel-planes:plane ki43.plane-data.model-data.body set value {parking-cmd:67,rolling-cmd:68,flying-cmd:69}
data modify storage voxel-planes:plane ki43.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane ki43.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane ki43.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane ki43.plane-data.model-data.central-axis-offset set value 1.5
data modify storage voxel-planes:plane ki43.plane-data.hp set value {engine:60d,body:60d,aileron:60d,elevetor:50d,radder:50d}
data modify storage voxel-planes:plane ki43.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {body:{max-hp:60d,offset:[0d,-0.5d,0d],width:1,height:1}}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {engine:{max-hp:60d,offset:[0d,-0.4d,1.7d],width:1,height:1}}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {aileron-r:{max-hp:60d,offset:[-3d,-0.7d,0.5d],width:1.4,height:1.4},aileron-l:{max-hp:60d,offset:[3d,-0.7d,0.5d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {elevator-r:{max-hp:50d,offset:[-1.1d,0.0d,-4.8d],width:0.7,height:0.7},elevator-l:{max-hp:50d,offset:[1.1d,0.0d,-4.8d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {radder:{max-hp:50d,offset:[0d,0.5d,-5.1d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane ki43.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,0.6d],width:0.3,height:0.3}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki43.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:9,speed:9.5d,bullets:[{offset:[0.1d,0.75d,0d]},{offset:[-0.15d,0.75d,0d]}]}
data modify storage voxel-planes:weapon ki43.additional.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:270,current-ammunition:270,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"yellow",damage:27,speed:10d,bullets:[{offset:[0.1d,0.75d,0d]},{offset:[-0.15d,0.75d,0d]}]}
