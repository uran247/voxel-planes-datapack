#> plane-data:f4u-1/f4u1-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon f4u1 set value {base:{},additional:{}}
data modify storage voxel-planes:plane f4u1 set value {}

#飛行機データセット
data modify storage voxel-planes:plane f4u1.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane f4u1.plane-data.tier set value 2
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.weight set value 4800.0
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.speed set value {max-speed:671f,cruise-speed:353f,climb-rate:15.2f,stall-speed:146f}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.engine set value {type:recipro,horse-power:2000f,number:1}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.turn-rate set value {pitch:34f,yaw:18f,roll:92f}
data modify storage voxel-planes:plane f4u1.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane f4u1.plane-data.model-data.body set value {parking-cmd:1,rolling-cmd:2,flying-cmd:3}
data modify storage voxel-planes:plane f4u1.plane-data.model-data.landing-pitch set value -12.0
data modify storage voxel-planes:plane f4u1.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane f4u1.plane-data.model-data.translation set value [0f,-0.2f,0.8f]
data modify storage voxel-planes:plane f4u1.plane-data.model-data.central-axis-offset set value 1.5
data modify storage voxel-planes:plane f4u1.plane-data.seat.position.ridden set value {x:0,y:0,z:-2.5}
data modify storage voxel-planes:plane f4u1.plane-data.seat.position.vacant set value {x:0,y:-0.4,z:1}
data modify storage voxel-planes:plane f4u1.plane-data.hp set value {engine:300d,body:330d,aileron:240d,elevetor:210d,radder:210d}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox set value {}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {engine:{max-hp:210d,offset:[0d,-0.4d,4.5d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {body:{max-hp:220d,offset:[0d,-0.5d,0d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {aileron-r:{max-hp:200d,offset:[-3.5d,-1.0d,2.2d],width:1.5,height:1.5},aileron-l:{max-hp:200d,offset:[3.5d,-1.0d,2.2d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {elevator-r:{max-hp:190d,offset:[-1.3d,-0.2d,-3.5d],width:0.8,height:0.8},elevator-l:{max-hp:190d,offset:[1.3d,-0.2d,-3.5d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {radder:{max-hp:200d,offset:[0d,0.8d,-2.8d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane f4u1.plane-data.hitbox merge value {cockpit:{offset:[0.0d,0.7d,1.4d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon f4u1.base.gun.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:400,current-ammunition:400,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:20,speed:11d,bullets:[{offset:[3d,0.9d,4d]},{offset:[2.8d,0.9d,4d]},{offset:[2.6d,0.9d,4d]},{offset:[-2.6d,0.9d,4d]},{offset:[-2.8d,0.9d,4d]},{offset:[-3d,0.9d,4d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon f4u1.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon f4u1.additional.500kg set value [{kind:1000lb,type:normal,offset:[-0.4d,-1.1d,2.1d],damage:2300,weight:454.0f,cmd:122}]
data modify storage voxel-planes:weapon f4u1.additional.500kg append value {kind:1000lb,type:normal,offset:[0.4d,-1.1d,2.1d],damage:2300,weight:454.0f,cmd:122}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon f4u1.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:8,current-ammunition:8,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket set value [{type:normal,damage:500,offset:[2.9d,-1.3d,2.8d],weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[3.3d,-1.21d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[3.7d,-1.12d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[4.1d,-1.03d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.9d,-1.3d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.3d,-1.21d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.7d,-1.12d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon f4u1.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.1d,-1.03,2.8d],weight:63.0f,kind:10kg,cmd:66}
