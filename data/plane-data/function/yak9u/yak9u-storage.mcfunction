#> plane-data:yak9u/yak9u-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon yak9u set value {base:{},additional:{}}
data modify storage voxel-planes:plane yak9u set value {}

#飛行機データセット
data modify storage voxel-planes:plane yak9u.plane-data.name set value yak9u
data modify storage voxel-planes:plane yak9u.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane yak9u.plane-data.tier set value 4
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.weight set value 3204
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.speed set value {max-speed:672f,cruise-speed:402f,climb-rate:16.7f,stall-speed:137f}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.engine set value {type:recipro,horse-power:1500,number:1}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.turn-rate set value {pitch:39f,yaw:23.4f,roll:149.8f}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane yak9u.plane-data.model-data.body set value {parking-cmd:10,rolling-cmd:11,flying-cmd:12}
data modify storage voxel-planes:plane yak9u.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane yak9u.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane yak9u.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane yak9u.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane yak9u.plane-data.seat.position.ridden set value {x:0,y:-0.5,z:-3.5}
data modify storage voxel-planes:plane yak9u.plane-data.seat.position.vacant set value {x:0,y:-0.5,z:0}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox set value {}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {engine:{max-hp:240d,offset:[0d,-0.6d,2.7d],width:1,height:1}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {body:{max-hp:240d,offset:[0d,-0.7d,0d],width:1,height:1}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {aileron-r:{max-hp:220d,offset:[-2.4d,-1.1d,0.9d],width:1.4,height:1.4},aileron-l:{max-hp:220d,offset:[2.4d,-1.1d,0.9d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {elevator-r:{max-hp:200d,offset:[-1d,0.0d,-3.3d],width:0.7,height:0.7},elevator-l:{max-hp:200d,offset:[1d,0.0d,-3.3d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {radder:{max-hp:210d,offset:[0d,0.5d,-3.5d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {cockpit:{offset:[0d,0.2d,0.3d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon yak9u.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:90,speed:9.9d,bullets:[{offset:[-0.1d,1.4d,3.9d]}]}}
data modify storage voxel-planes:weapon yak9u.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:170,current-ammunition:170,max-cooltime:2,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:55,speed:10.6d,bullets:[{offset:[-0.25d,1.8d,3.2d]},{offset:[0.1d,1.8d,3.2d]}]}}
