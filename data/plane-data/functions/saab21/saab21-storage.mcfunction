#> plane-data:saab21/saab21-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon saab21 set value {base:{},additional:{}}
data modify storage voxel-planes:plane saab21 set value {}

#飛行機データセット
data modify storage voxel-planes:plane saab21.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane saab21.plane-data.tier set value 3
data modify storage voxel-planes:plane saab21.plane-data.flight-model.weight set value 4413
data modify storage voxel-planes:plane saab21.plane-data.flight-model.speed set value {max-speed:650f,cruise-speed:495f,climb-rate:15f,stall-speed:135f}
data modify storage voxel-planes:plane saab21.plane-data.flight-model.engine set value {type:recipro,horse-power:1455f,number:1}
data modify storage voxel-planes:plane saab21.plane-data.flight-model.turn-rate set value {pitch:37.9f,yaw:26.5,roll:146f}
data modify storage voxel-planes:plane saab21.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane saab21.plane-data.model-data.body set value {parking-cmd:19,rolling-cmd:20,flying-cmd:21}
data modify storage voxel-planes:plane saab21.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane saab21.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane saab21.plane-data.model-data.translation set value [0f,0f,0.7f]
data modify storage voxel-planes:plane saab21.plane-data.hitbox set value {}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {engine:{max-hp:150d,offset:[0d,0.5d,-2d]}}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {aileron-r:{max-hp:150d,offset:[-3d,0d,0d]},aileron-l:{max-hp:150d,offset:[3d,0d,0d]}}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {elevator:{max-hp:120d,offset:[0d,0.6d,-4d]}}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {radder-r:{max-hp:130d,offset:[-2.3d,1.2d,-4d]},radder-l:{max-hp:130d,offset:[2.3d,1.2d,-4d]}}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,1d]}}
data modify storage voxel-planes:plane saab21.plane-data.hitbox merge value {body:{max-hp:160,offset:[0d,1d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon saab21.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:140,current-ammunition:140,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:10.5d,bullets:[{offset:[0.4d,2.4d,4.7d]}]}}
data modify storage voxel-planes:weapon saab21.base.13p2mm set value {data:{name:"13.2mm gun",type:gun,size:13mm,max-ammunition:337,current-ammunition:337,max-cooltime:2,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:39,speed:11d,bullets:[{offset:[0.2d,2.2d,4.7d]},{offset:[0.6d,2.2d,4.7d]},{offset:[-2.5d,1.8d,1.7d]},{offset:[3.2d,1.8d,1.7d]}]}}

