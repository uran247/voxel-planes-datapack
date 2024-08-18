#> plane-data:venomfb4/venomfb4-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon venomfb4 set value {base:{},additional:{}}
data modify storage voxel-planes:plane venomfb4 set value {}

#飛行機データセット
data modify storage voxel-planes:plane venomfb4.plane-data.name set value venomfb4
data modify storage voxel-planes:plane venomfb4.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane venomfb4.plane-data.tier set value 5
data modify storage voxel-planes:plane venomfb4.plane-data.flight-model.weight set value 6985f
data modify storage voxel-planes:plane venomfb4.plane-data.flight-model.speed set value {max-speed:961f,cruise-speed:520f,climb-rate:33.9f,stall-speed:155f}
data modify storage voxel-planes:plane venomfb4.plane-data.flight-model.engine set value {type:jet,thrust:2200f,number:1}
data modify storage voxel-planes:plane venomfb4.plane-data.flight-model.turn-rate set value {pitch:33f,yaw:25f,roll:146f}
data modify storage voxel-planes:plane venomfb4.plane-data.flight-model.energy-loss-rate set value 0.4f
data modify storage voxel-planes:plane venomfb4.plane-data.model-data.body set value {parking-cmd:113,rolling-cmd:114,flying-cmd:114}
data modify storage voxel-planes:plane venomfb4.plane-data.model-data.landing-pitch set value -3f
data modify storage voxel-planes:plane venomfb4.plane-data.model-data.scale set value [12.7f,12.7f,12.7f]
data modify storage voxel-planes:plane venomfb4.plane-data.model-data.translation set value [0f,-1.3f,0f]
data modify storage voxel-planes:plane venomfb4.plane-data.model-data.central-axis-offset set value 1.07
data modify storage voxel-planes:plane venomfb4.plane-data.seat.position.ridden set value {x:0,y:0,z:-5.5}
data modify storage voxel-planes:plane venomfb4.plane-data.seat.position.vacant set value {x:0,y:-1,z:3}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox set value {}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {engine:{max-hp:190f,offset:[0d,-0.5d,-1d],width:1f,height:1f}}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {aileron-r:{max-hp:190f,offset:[-2.8d,-0.9d,0d],width:1.8f,height:1.8f},aileron-l:{max-hp:190f,offset:[2.8d,-0.9d,0d],width:1.8f,height:1.8f}}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {elevator:{max-hp:170f,offset:[0d,0.2d,-4.8d],width:1f,height:1f}}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {radder-r:{max-hp:170f,offset:[-1.6d,0.5d,-5d],width:0.7f,height:0.7f},radder-l:{max-hp:170f,offset:[1.6d,0.5d,-5d],width:0.7f,height:0.7f}}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {cockpit:{offset:[0d,0.3d,2.5d],width:0.4f,height:0.4f}}
data modify storage voxel-planes:plane venomfb4.plane-data.hitbox merge value {body:{max-hp:200f,offset:[0d,0.5d,0d],width:1f,height:1f}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon venomfb4.base.gun set value {data:{name:"20mm gun",type:gun,size:20mm,max-ammunition:150,current-ammunition:150,max-cooltime:2,current-cooltime:0,max-reload:21,current-reload:0,tracer:"orange",damage:150,speed:11d,bullets:[{offset:[-0.2d,0.4d,4d]},{offset:[-0.3d,0.4d,3.8d]},{offset:[0.2d,0.4d,4d]},{offset:[0.35d,0.4d,3.8d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon venomfb4.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon venomfb4.additional.1000lb set value [{kind:1000lb,type:normal,offset:[3.3d,0.1d,0d],damage:250,weight:450.0f,cmd:133}]
data modify storage voxel-planes:weapon venomfb4.additional.1000lb append value {kind:1000lb,type:normal,offset:[-3.3d,0.1d,0d],damage:2250,weight:450.0f,cmd:133}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon venomfb4.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:12,current-ammunition:12,max-reload:600,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket set value [{type:normal,damage:300,offset:[3.1d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}]
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[3.3d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[3.5d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[3.7d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.1d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.3d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.5d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon venomfb4.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.7d,0.3d,0d],weight:36.0f,kind:10kg,cmd:134}
