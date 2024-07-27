#> plane-data:meteor-f8/meteorf8-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon meteorf8 set value {base:{},additional:{}}
data modify storage voxel-planes:plane meteorf8 set value {}

#飛行機データセット
data modify storage voxel-planes:plane meteorf8.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane meteorf8.plane-data.tier set value 5
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.weight set value 7172.0
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.speed set value {max-speed:970f,cruise-speed:630f,climb-rate:36f,stall-speed:232f}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.engine set value {type:jet,thrust:1632f,number:2}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.turn-rate set value {pitch:31f,yaw:23f,roll:119f}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.body set value {parking-cmd:161,rolling-cmd:161,flying-cmd:162}
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.translation set value [0f,-0.3f,-0.8f]
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox set value {}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {engine-r:{max-hp:400d,offset:[-2.3d,-0.6d,1.4d],width:1,height:1},engine-l:{max-hp:400d,offset:[2.3d,-0.6d,1.4d],width:1,height:1}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {aileron-r:{max-hp:420d,offset:[-4d,-1.1d,0.5d],width:1.8,height:1.8},aileron-l:{max-hp:420d,offset:[4d,-1.1d,0.5d],width:1.8,height:1.8}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {elevator-r:{max-hp:400d,offset:[-1.1d,1.2d,-6.1d],width:0.9,height:0.9},elevator-l:{max-hp:400d,offset:[1.1d,1.2d,-6.1d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {radder:{max-hp:400d,offset:[0d,1.2d,-6.2d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {body:{max-hp:430d,offset:[0d,-0.5d,0d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,3.5d],width:0.5,height:0.5}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon meteorf8.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:195,current-ammunition:195,max-cooltime:2,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:106,speed:11d,bullets:[{offset:[0.35d,1.75d,4.8d]},{offset:[0.45d,1.45d,4.8d]},{offset:[-0.75d,1.45d,4.8d]},{offset:[-0.65d,1.75d,4.8d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon meteorf8.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon meteorf8.additional.1000lb set value [{kind:1000lb,type:normal,offset:[3.5d,-0.8d,0.5d],damage:2300,weight:454.0f,cmd:133}]
data modify storage voxel-planes:weapon meteorf8.additional.1000lb append value {kind:1000lb,type:normal,offset:[-3.5d,-0.8d,0.5d],damage:2300,weight:454.0f,cmd:133}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon meteorf8.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket set value [{type:normal,damage:300,offset:[-3d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}]
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.3d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.3d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.6d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.6d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.9d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.9d,-0.64d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.15d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.15d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.45d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.45d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.75d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.75d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-4.05d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[4.05d,-0.8d,0.5d],weight:36.0f,kind:10kg,cmd:134}

