#> plane-data:yak9u/yak9u-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon yak9u set value {base:{},additional:{}}
data modify storage voxel-planes:plane yak9u set value {}

#飛行機データセット
data modify storage voxel-planes:plane yak9u.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane yak9u.plane-data.tier set value 4
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.weight set value 3204
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.speed set value {max-speed:672f,cruise-speed:402f,climb-rate:16.7f,stall-speed:137f}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.engine set value {type:recipro,horse-power:1500,number:1}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.turn-rate set value {pitch:39f,yaw:23.4f,roll:149.8f}
data modify storage voxel-planes:plane yak9u.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane yak9u.plane-data.model-data.body set value {parking-cmd:10,rolling-cmd:11,flying-cmd:12}
data modify storage voxel-planes:plane yak9u.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane yak9u.plane-data.hitbox set value {}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {engine:{max-hp:240d,offset:[0d,0d,2d]}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {body:{max-hp:240d,offset:[0.3d,0d,0d]}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {aileron-r:{max-hp:220d,offset:[-2.2d,-0.4d,0.4d]},aileron-l:{max-hp:220d,offset:[2.2d,-0.4d,0.4d]}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {elevator-r:{max-hp:200d,offset:[-0.6d,0.1d,-4.3d]},elevator-l:{max-hp:200d,offset:[0.6d,0.1d,-4.3d]}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {radder:{max-hp:210d,offset:[0d,0.7d,-4.3d]}}
data modify storage voxel-planes:plane yak9u.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon yak9u.base.20mm set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:90,speed:9.9d,bullets:[{offset:[-0.1d,1.4d,3.9d]}]}}
data modify storage voxel-planes:weapon yak9u.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:170,current-ammunition:170,max-cooltime:2,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:55,speed:10.6d,bullets:[{offset:[-0.25d,1.8d,3.2d]},{offset:[0.1d,1.8d,3.2d]}]}}
