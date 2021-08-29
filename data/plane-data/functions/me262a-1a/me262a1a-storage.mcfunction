#> plane-data:me262a-1a/me262a1a-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon me262a1a set value {base:{},additional:{}}
data modify storage voxel-planes:plane me262a1a set value {}

#飛行機データセット
data modify storage voxel-planes:plane me262a1a.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane me262a1a.plane-data.tier set value 5
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.weight set value 6473.0
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.speed set value {max-speed:870f,cruise-speed:740f,climb-rate:20f,stall-speed:202f}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.engine set value {type:jet,thrust:897f,number:2}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.turn-rate set value {pitch:26f,yaw:15f,roll:71f}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.body set value {parking-cmd:128,rolling-cmd:128,flying-cmd:129}
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane me262a1a.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox set value {}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {engine-r:{offset:[-2.6d,0.25d,6.3d]},engine-l:{offset:[2.6d,0.25d,6.3d]}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {aileron-r:{offset:[-3.2d,-0.3d,1.1d]},aileron-l:{offset:[3.2d,-0.3d,1.1d]}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {elevator-r:{offset:[-1.3d,0.1d,-4d]},elevator-l:{offset:[1.3d,0.1d,-4d]}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {radder:{offset:[0d,0.8d,-4.2d]}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon me262a1a.base.30mm.data set value {name:"30mm gun",type:gun,size:30mm,max-ammunition:90,current-ammunition:90,max-cooltime:4,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:200,speed:6.8d,bullets:[{offset:[-0.5d,2.1d,4.4d]},{offset:[0.27d,2.1d,4.4d]},{offset:[-0.28d,2.3d,4.4d]},{offset:[0.04d,2.3d,4.4d]}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon me262a1a.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:24,current-ammunition:24,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket set value [{type:normal,damage:200,offset:[-3.1d,0.04d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}]
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.1d,0.04d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.18d,0.055d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.18d,0.055d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.26d,0.07d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.26d,0.07d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.34d,0.085d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.34d,0.0856d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.42d,0.1d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.42d,0.1d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.5d,0.115d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.5d,0.115d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.58d,0.13d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.58d,0.13d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.66d,0.145d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.66d,0.145d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.74d,0.16d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.74d,0.16d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.82d,0.175d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.82d,0.175d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.9d,0.19d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.9d,0.19d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.98d,0.205d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.98d,0.205d,0.3d],weight:4,kind:10kg,cmd:148,launched-cmd:149}

