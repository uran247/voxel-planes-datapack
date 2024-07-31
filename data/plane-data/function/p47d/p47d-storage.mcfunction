#> plane-data:p47d/p47d-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p47d set value {base:{},additional:{}}
data modify storage voxel-planes:plane p47d set value {}

#飛行機データセット
data modify storage voxel-planes:plane p47d.plane-data.name set value p47d
data modify storage voxel-planes:plane p47d.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p47d.plane-data.tier set value 3
data modify storage voxel-planes:plane p47d.plane-data.flight-model.weight set value 6577
data modify storage voxel-planes:plane p47d.plane-data.flight-model.speed set value {max-speed:686f,cruise-speed:411f,climb-rate:16.6f,stall-speed:169f}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.engine set value {type:recipro,horse-power:2000,number:1}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.turn-rate set value {pitch:28.8f,yaw:17.3f,roll:150f}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane p47d.plane-data.model-data.body set value {parking-cmd:56,rolling-cmd:57,flying-cmd:58}
data modify storage voxel-planes:plane p47d.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane p47d.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane p47d.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane p47d.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane p47d.plane-data.seat.position.ridden set value {x:0,y:0,z:-2.5}
data modify storage voxel-planes:plane p47d.plane-data.seat.position.vacant set value {x:0,y:-0.2,z:2}
data modify storage voxel-planes:plane p47d.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {engine:{max-hp:280d,offset:[0d,-0.6d,5d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {aileron-r:{max-hp:250d,offset:[-3.4d,-1d,3d],width:1.6,height:1.6},aileron-l:{max-hp:250d,offset:[3.4d,-1d,3d],width:1.6,height:1.6}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {elevator-r:{max-hp:220d,offset:[-1.3d,-0.2d,-2.9d],width:0.9,height:0.9},elevator-l:{max-hp:220d,offset:[1.3d,-0.2d,-2.9d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {radder:{max-hp:230d,offset:[0d,0.7d,-3d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {cockpit:{offset:[0d,0.5d,2.6d],width:0.5,height:0.5}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {body:{max-hp:280d,offset:[0d,-0.7d,1d],width:1.3,height:1.3}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p47d.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:425,current-ammunition:425,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:45,speed:11,bullets:[{offset:[-3.3d,1.2d,3.9d]},{offset:[-3.15d,1.15d,4.1d]},{offset:[-3d,1.1d,4.2d]},{offset:[-2.85d,1.1d,4.3d]},{offset:[3.15d,1.2d,3.9d]},{offset:[3d,1.15d,4.1d]},{offset:[2.85d,1.1d,4.2d]},{offset:[2.7d,1.1d,4.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p47d.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p47d.additional.1000lb set value [{kind:1000lb,type:normal,offset:[-3.2d,-0.7d,2.8d],damage:2300,weight:454.0f,cmd:122}]
data modify storage voxel-planes:weapon p47d.additional.1000lb append value {kind:1000lb,type:normal,offset:[3.2d,-0.7d,2.8d],damage:2300,weight:454.0f,cmd:122}
data modify storage voxel-planes:weapon p47d.additional.500lb set value [{kind:500lb,type:normal,offset:[0d,-1.4d,2.8d],damage:1140,weight:227.0f,cmd:164}]

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon p47d.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket set value [{type:normal,offset:[2.5d,-0.7d,3.5d],damage:500,weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[2.9d,-0.65d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[3.3d,-0.6d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[3.7d,-0.55d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[4.1d,-0.5d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.1d,-0.7d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.5d,-0.65d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.9d,-0.6d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.3d,-0.55d,3.5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.7d,-0.5d,3.5d],weight:63.0f,kind:10kg,cmd:66}
