#> plane-data:spitfiremkv/spitfiremkv-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon spitfiremkv set value {base:{},additional:{}}
data modify storage voxel-planes:plane spitfiremkv set value {}

#飛行機データセット
data modify storage voxel-planes:plane spitfiremkv.plane-data.name set value spitfiremkv
data modify storage voxel-planes:plane spitfiremkv.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane spitfiremkv.plane-data.tier set value 2
data modify storage voxel-planes:plane spitfiremkv.plane-data.flight-model.weight set value 3000f
data modify storage voxel-planes:plane spitfiremkv.plane-data.flight-model.speed set value {max-speed:605f,cruise-speed:330f,climb-rate:13.5f,stall-speed:128f}
data modify storage voxel-planes:plane spitfiremkv.plane-data.flight-model.engine set value {type:recipro,horse-power:1470f,number:1}
data modify storage voxel-planes:plane spitfiremkv.plane-data.flight-model.turn-rate set value {pitch:43f,yaw:33f,roll:130f}
data modify storage voxel-planes:plane spitfiremkv.plane-data.flight-model.energy-loss-rate set value 0.3f
data modify storage voxel-planes:plane spitfiremkv.plane-data.model-data.body set value {parking-cmd:99,rolling-cmd:100,flying-cmd:101}
data modify storage voxel-planes:plane spitfiremkv.plane-data.model-data.landing-pitch set value -11f
data modify storage voxel-planes:plane spitfiremkv.plane-data.model-data.scale set value [11.23f,11.23f,11.23f]
data modify storage voxel-planes:plane spitfiremkv.plane-data.model-data.translation set value [0f,-0.3f,0f]
data modify storage voxel-planes:plane spitfiremkv.plane-data.model-data.central-axis-offset set value 2
data modify storage voxel-planes:plane spitfiremkv.plane-data.seat.position.ridden set value {x:0,y:-0.4,z:-4}
data modify storage voxel-planes:plane spitfiremkv.plane-data.seat.position.vacant set value {x:0,y:-0.5,z:0.2}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox set value {}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {engine:{max-hp:100d,offset:[0d,-0.5d,2.5d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {aileron-r:{max-hp:110d,offset:[-2.4d,-1.5d,1d],width:1.4,height:1.4},aileron-l:{max-hp:13110d0d,offset:[2.4d,-1.5d,1d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {elevator-r:{max-hp:90d,offset:[-0.8d,-0.5d,-4.2d],width:0.7,height:0.7},elevator-l:{max-hp:90d,offset:[0.8d,-0.5d,-4.2d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {radder:{max-hp:90d,offset:[0d,0.3d,-4.6d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {cockpit:{offset:[0d,0.3d,0.2d],width:0.4,height:0.4}}
data modify storage voxel-planes:plane spitfiremkv.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,-0.9d,0d],width:0.9,height:0.9}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon spitfiremkv.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:33,speed:10.5d,bullets:[{offset:[-1.96d,1.1d,3.3d]},{offset:[2.06d,1.1d,3.3d]}]}
data modify storage voxel-planes:weapon spitfiremkv.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:1400,current-ammunition:1400,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"yellow",damage:13,speed:10.5d,bullets:[{offset:[-2.86d,1.2d,2.3d]},{offset:[-3.8d,1.3d,2.2d]},{offset:[2.92d,1.2d,2.3d]},{offset:[3.85d,1.3d,2.2d]}]}
