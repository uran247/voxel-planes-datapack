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
data modify storage voxel-planes:plane meteorf8.plane-data.hp set value {engine:400d,body:430d,aileron:420d,elevetor:400d,radder:400d}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox set value {}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {engine-r:{max-hp:400d,offset:[-2.3d,-0.4d,2.3d]},engine-l:{max-hp:400d,offset:[2.3d,-0.4d,2.3d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {aileron-r:{max-hp:420d,offset:[-3.2d,-0.2d,0.7d]},aileron-l:{max-hp:420d,offset:[3.2d,-0.2d,0.7d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {elevator-r:{max-hp:400d,offset:[-1.1d,0.6d,-4.4d]},elevator-l:{max-hp:400d,offset:[1.1d,0.6d,-4.4d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {radder:{max-hp:400d,offset:[0d,1.3d,-4.7d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {body:{max-hp:430d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane meteorf8.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon meteorf8.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:90,current-ammunition:90,max-cooltime:4,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:200,speed:6.8d,bullets:[{offset:[-0.5d,2.1d,4.4d]},{offset:[0.27d,2.1d,4.4d]},{offset:[-0.28d,2.3d,4.4d]},{offset:[0.04d,2.3d,4.4d]}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon meteorf8.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:24,current-ammunition:24,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket set value [{type:normal,damage:200,offset:[-3.1d,0.04d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}]
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.1d,0.04d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.18d,0.055d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.18d,0.055d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.26d,0.07d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.26d,0.07d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.34d,0.085d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.34d,0.0856d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.42d,0.1d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.42d,0.1d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.5d,0.115d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.5d,0.115d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.58d,0.13d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.58d,0.13d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.66d,0.145d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.66d,0.145d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.74d,0.16d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.74d,0.16d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.82d,0.175d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.82d,0.175d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.9d,0.19d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.9d,0.19d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.98d,0.205d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon meteorf8.additional.aa-rocket append value {type:normal,damage:200,offset:[3.98d,0.205d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}

