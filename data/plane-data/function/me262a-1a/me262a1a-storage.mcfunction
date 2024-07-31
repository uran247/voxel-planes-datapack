#> plane-data:me262a-1a/me262a1a-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon me262a1a set value {base:{},additional:{}}
data modify storage voxel-planes:plane me262a1a set value {}

#飛行機データセット
data modify storage voxel-planes:plane me262a1a.plane-data.name set value me262a1a
data modify storage voxel-planes:plane me262a1a.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane me262a1a.plane-data.tier set value 5
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.weight set value 6473.0
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.speed set value {max-speed:870f,cruise-speed:740f,climb-rate:20f,stall-speed:202f}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.engine set value {type:jet,thrust:897f,number:2}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.turn-rate set value {pitch:26f,yaw:15f,roll:71f}
data modify storage voxel-planes:plane me262a1a.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.body set value {parking-cmd:128,rolling-cmd:128,flying-cmd:129}
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.translation set value [0f,0.0f,-0.3f]
data modify storage voxel-planes:plane me262a1a.plane-data.model-data.central-axis-offset set value 1.75
data modify storage voxel-planes:plane me262a1a.plane-data.seat.position.ridden set value {x:0,y:0.5,z:-4.7}
data modify storage voxel-planes:plane me262a1a.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:1}
data modify storage voxel-planes:plane me262a1a.plane-data.hp set value {engine:400d,body:430d,aileron:420d,elevetor:400d,radder:400d}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox set value {}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {engine-r:{max-hp:400d,offset:[-2.3d,-1.1d,1d],width:0.8,height:0.8},engine-l:{max-hp:400d,offset:[2.3d,-1.1d,1d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {aileron-r:{max-hp:420d,offset:[-3.2d,-0.7d,-0.1d],width:1.2,height:1.2},aileron-l:{max-hp:420d,offset:[3.2d,-0.7d,-0.1d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {elevator-r:{max-hp:400d,offset:[-1.1d,0.3d,-5.2d],width:0.7,height:0.7},elevator-l:{max-hp:400d,offset:[1.1d,0.3d,-5.2d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {radder:{max-hp:400d,offset:[0d,0.8d,-5.5d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {body:{max-hp:430d,offset:[0d,-0.5d,0d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane me262a1a.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,0.7d],width:0.5,height:0.5}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon me262a1a.base.30mm.data set value {name:"30mm gun",type:gun,size:30mm,max-ammunition:90,current-ammunition:90,max-cooltime:4,current-cooltime:0,max-reload:800,current-reload:0,tracer:"orange",damage:200,speed:6.8d,bullets:[{offset:[-0.5d,2.1d,4.4d]},{offset:[0.27d,2.1d,4.4d]},{offset:[-0.28d,2.3d,4.4d]},{offset:[0.04d,2.3d,4.4d]}]}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon me262a1a.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:24,current-ammunition:24,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket set value [{type:normal,damage:200,offset:[-3.1d,-0.56d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}]
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.1d,-0.56d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.18d,-0.545d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.18d,-0.545d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.26d,-0.53d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.26d,-0.53d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.34d,-0.515d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.34d,-0.515d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.42d,-0.5d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.42d,-0.5d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.5d,-0.485d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.5d,-0.485d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.58d,-0.47d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.58d,-0.47d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.66d,-0.455d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.66d,-0.455d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.74d,-0.44d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.74d,-0.44d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.82d,-0.425d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.82d,-0.425d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.9d,-0.41d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.9d,-0.41d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[-3.98d,-0.395d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}
data modify storage voxel-planes:weapon me262a1a.additional.aa-rocket append value {type:normal,damage:200,offset:[3.98d,-0.395d,0.0d],weight:4,kind:10kg,cmd:148,launched-cmd:149}

