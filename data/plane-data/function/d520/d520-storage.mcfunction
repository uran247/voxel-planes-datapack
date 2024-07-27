#> plane-data:d520/d520-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon d520 set value {base:{},additional:{}}
data modify storage voxel-planes:plane d520 set value {}

#飛行機データセット
data modify storage voxel-planes:plane d520.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane d520.plane-data.tier set value 2
data modify storage voxel-planes:plane d520.plane-data.flight-model.weight set value 2452
data modify storage voxel-planes:plane d520.plane-data.flight-model.speed set value {max-speed:529,cruise-speed:370,climb-rate:14.3,stall-speed:125}
data modify storage voxel-planes:plane d520.plane-data.flight-model.engine set value {type:recipro,horse-power:900,number:1}
data modify storage voxel-planes:plane d520.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:21.6f,roll:90f}
data modify storage voxel-planes:plane d520.plane-data.flight-model.energy-loss-rate set value 0.7
data modify storage voxel-planes:plane d520.plane-data.model-data.body set value {parking-cmd:41,rolling-cmd:42,flying-cmd:43}
data modify storage voxel-planes:plane d520.plane-data.model-data.landing-pitch set value -12
data modify storage voxel-planes:plane d520.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane d520.plane-data.model-data.translation set value [-0.3f,-0.5f,0f]
data modify storage voxel-planes:plane d520.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane d520.plane-data.hitbox set value {}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {engine:{max-hp:160d,offset:[0d,-0.2d,2.5d],width:1,height:1}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {aileron-r:{max-hp:140d,offset:[-2.5d,-0.5d,1d],width:1.2,height:1.2},aileron-l:{max-hp:140d,offset:[2.5d,-0.5d,1d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {elevator-r:{max-hp:110d,offset:[-0.5d,0.2d,-3.5d],width:0.8,height:0.8},elevator-l:{max-hp:110d,offset:[0.5d,0.2d,-3.5d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {radder:{max-hp:120d,offset:[0d,0.9d,-3.9d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,-0.3d],width:0.5,height:0.5}}
data modify storage voxel-planes:plane d520.plane-data.hitbox merge value {body:{max-hp:170d,offset:[0d,-0.3d,0d],width:1,height:1}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon d520.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:60,current-ammunition:60,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:11,bullets:[{offset:[0d,0d,4d]}]}}
data modify storage voxel-planes:weapon d520.base.7p5mm set value {data:{name:"7.5mm gun",type:gun,size:7p7mm,max-ammunition:675,current-ammunition:675,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightgreen",damage:18,speed:10.5,bullets:[{offset:[-1.9d,1.1d,2.1d]},{offset:[-1.7d,1.1d,2.1d]},{offset:[1.9d,1.1d,2.1d]},{offset:[1.7d,1.1d,2.1d]}]}}
