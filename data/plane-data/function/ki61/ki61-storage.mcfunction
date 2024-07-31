#> plane-data:ki61/ki61-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon ki61 set value {base:{},additional:{}}
data modify storage voxel-planes:plane ki61 set value {}

#飛行機データセット
data modify storage voxel-planes:plane ki61.plane-data.name set value ki61
data modify storage voxel-planes:plane ki61.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane ki61.plane-data.tier set value 3
data modify storage voxel-planes:plane ki61.plane-data.flight-model.weight set value 2970
data modify storage voxel-planes:plane ki61.plane-data.flight-model.speed set value {max-speed:560f,cruise-speed:330f,climb-rate:15.2f,stall-speed:146f}
data modify storage voxel-planes:plane ki61.plane-data.flight-model.engine set value {type:recipro,horse-power:1175f,number:1}
data modify storage voxel-planes:plane ki61.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:24f,roll:112f}
data modify storage voxel-planes:plane ki61.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane ki61.plane-data.model-data.body set value {parking-cmd:102,rolling-cmd:103,flying-cmd:104}
data modify storage voxel-planes:plane ki61.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane ki61.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane ki61.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane ki61.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane ki61.plane-data.seat.position.ridden set value {x:0,y:-0.2,z:-4.3}
data modify storage voxel-planes:plane ki61.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:0.5}
data modify storage voxel-planes:plane ki61.plane-data.hp set value {engine:110d,body:120d,aileron:110d,elevetor:100d,radder:100d}
data modify storage voxel-planes:plane ki61.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {body:{max-hp:120d,offset:[0d,-0.5d,0d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {engine:{max-hp:110d,offset:[0d,-0.3d,2.9d],width:1,height:1}}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {aileron-r:{max-hp:110d,offset:[-3d,-0.7d,1.2d],width:1.3,height:1.3},aileron-l:{max-hp:110d,offset:[3d,-0.7d,1.2d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {elevator-r:{max-hp:100d,offset:[-1d,0.0d,-3.7d],width:0.7,height:0.7},elevator-l:{max-hp:100d,offset:[1d,0.0d,-3.7d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {radder:{max-hp:100d,offset:[0d,0.6d,-3.8d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane ki61.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,1.1d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki61.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:9d,bullets:[{offset:[2.2d,-0.18d,2.2d]},{offset:[-2.2d,-0.18d,2.2d]}]}
data modify storage voxel-planes:weapon ki61.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"yellow",damage:38,speed:10d,bullets:[{offset:[0.14d,0.63d,2.2d]},{offset:[-0.14d,0.63d,2.2d]}]}
data modify storage voxel-planes:weapon ki61.additional.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:80,speed:9d,bullets:[{offset:[2.2d,-0.18d,2.2d]},{offset:[-2.2d,-0.18d,2.2d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki61.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ki61.additional.250kg set value [{kind:250kg,type:normal,offset:[-2.6d,-0.7d,1.2d],damage:1250,weight:250,cmd:77}]
data modify storage voxel-planes:weapon ki61.additional.250kg append value {kind:250kg,type:normal,offset:[2.6d,-0.7d,1.2d],damage:1250,weight:250,cmd:77}
