#> plane-data:meteor-f8/meteorf8-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon meteorf8 set value {base:{},additional:{}}
data modify storage voxel-planes:plane meteorf8 set value {}

#飛行機データセット
data modify storage voxel-planes:plane meteorf8.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane meteorf8.plane-data.tier set value 5
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.weight set value 6473.0
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.speed set value {max-speed:870f,cruise-speed:740f,climb-rate:20f,stall-speed:202f}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.engine set value {type:jet,thrust:897f,number:2}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.turn-rate set value {pitch:31f,yaw:23f,roll:119f}
data modify storage voxel-planes:plane meteorf8.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.body set value {parking-cmd:161,rolling-cmd:161,flying-cmd:162}
data modify storage voxel-planes:plane meteorf8.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox set value {}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {engine-r:{max-hp:400d,offset:[-2.3d,-0.4d,2.3d]},engine-l:{max-hp:400d,offset:[2.3d,-0.4d,2.3d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {aileron-r:{max-hp:420d,offset:[-3.2d,-0.2d,0.7d]},aileron-l:{max-hp:420d,offset:[3.2d,-0.2d,0.7d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {elevator-r:{max-hp:400d,offset:[-1.1d,1.5d,-5.7d]},elevator-l:{max-hp:400d,offset:[1.1d,1.5d,-5.7d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {radder:{max-hp:400d,offset:[0d,1.5d,-6d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {body:{max-hp:430d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,4d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon meteorf8.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:195,current-ammunition:195,max-cooltime:2,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:106,speed:11d,bullets:[{offset:[0.35d,1.75d,4.8d]},{offset:[0.45d,1.45d,4.8d]},{offset:[-0.75d,1.45d,4.8d]},{offset:[-0.65d,1.75d,4.8d]}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon meteorf8.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket set value [{type:normal,damage:300,offset:[-3d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}]
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.3d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.3d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.6d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.6d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.9d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.9d,-0.44d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.15d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.15d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.45d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.45d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-3.75d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[3.75d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-4.05d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[4.05d,-0.6d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-0.15d,-0.65d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[0.15d,-0.65d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-0.45d,-0.65d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[0.45d,-0.65d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-0.15d,-0.8d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[0.15d,-0.8d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[-0.45d,-0.8d,0.3d],weight:36.0f,kind:10kg,cmd:134}
data modify storage voxel-planes:weapon meteorf8.additional.ag-rocket append value {type:normal,damage:300,offset:[0.45d,-0.8d,0.3d],weight:36.0f,kind:10kg,cmd:134}

