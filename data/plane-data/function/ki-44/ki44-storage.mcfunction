#> plane-data:ki-44/ki44-storage
#
# @within tag/function constructor:add-storage

data modify storage voxel-planes:weapon ki44 set value {base:{},additional:{}}
data modify storage voxel-planes:plane ki44 set value {}

#飛行機データセット
data modify storage voxel-planes:plane ki44.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane ki44.plane-data.tier set value 2
data modify storage voxel-planes:plane ki44.plane-data.flight-model.weight set value 2519
data modify storage voxel-planes:plane ki44.plane-data.flight-model.speed set value {max-speed:605f,cruise-speed:400f,climb-rate:19.6f,stall-speed:160f}
data modify storage voxel-planes:plane ki44.plane-data.flight-model.engine set value {type:recipro,horse-power:1250f,number:1}
data modify storage voxel-planes:plane ki44.plane-data.flight-model.turn-rate set value {pitch:36,yaw:20,roll:260}
data modify storage voxel-planes:plane ki44.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane ki44.plane-data.model-data.body set value {parking-cmd:90,rolling-cmd:91,flying-cmd:92}
data modify storage voxel-planes:plane ki44.plane-data.model-data.landing-pitch set value -11.5
data modify storage voxel-planes:plane ki44.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane ki44.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane ki44.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane ki44.plane-data.seat.position.ridden set value {x:0,y:-0.7,z:-1.3}
data modify storage voxel-planes:plane ki44.plane-data.seat.position.vacant set value {x:0,y:-0.3,z:0.5}
data modify storage voxel-planes:plane ki44.plane-data.hp set value {engine:110d,body:120d,aileron:110d,elevetor:100d,radder:100d}
data modify storage voxel-planes:plane ki44.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {body:{max-hp:120d,offset:[0d,-0.5d,0d],width:1,height:1}}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {engine:{max-hp:110d,offset:[0d,-0.5d,3.1d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {aileron-r:{max-hp:110d,offset:[-2.8d,-0.8d,2d],width:1.2,height:1.2},aileron-l:{max-hp:110d,offset:[2.8d,-0.8d,2d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {elevator-r:{max-hp:100d,offset:[-1d,-0.3d,-2.7d],width:0.6,height:0.6},elevator-l:{max-hp:100d,offset:[1d,-0.3d,-2.7d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {radder:{max-hp:100d,offset:[0d,0.3d,-3.6d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane ki44.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,1.6d],width:0.3,height:0.3}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon ki44.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"orange",damage:32,speed:10d,bullets:[{offset:[0.2d,0.6d,3.3d]},{offset:[-0.2d,0.6d,3.3d]},{offset:[1.74d,0.6d,3.3d]},{offset:[-1.74d,0.6d,3.3d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki44.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ki44.additional.100kg set value [{kind:100kg,type:normal,offset:[-2.6d,-0.7d,2d],damage:500,weight:100,cmd:117}]
data modify storage voxel-planes:weapon ki44.additional.100kg append value {kind:100kg,type:normal,offset:[2.6d,-0.7d,2d],damage:500,weight:100,cmd:117}

