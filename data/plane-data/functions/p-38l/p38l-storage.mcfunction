#> plane-data:p-38l/p38l-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p38l set value {base:{},additional:{}}
data modify storage voxel-planes:plane p38l set value {}

#飛行機データセット
data modify storage voxel-planes:plane p38l.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p38l.plane-data.tier set value 3
data modify storage voxel-planes:plane p38l.plane-data.flight-model.weight set value 7940
data modify storage voxel-planes:plane p38l.plane-data.flight-model.speed set value {max-speed:667f,cruise-speed:443,climb-rate:24.1f,stall-speed:125.5f}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.engine set value {type:recipro,horse-power:1600f,number:2}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.turn-rate set value {pitch:33f,yaw:17f,roll:130f}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane p38l.plane-data.model-data.body set value {parking-cmd:144,rolling-cmd:145,flying-cmd:146}
data modify storage voxel-planes:plane p38l.plane-data.model-data.landing-pitch set value -5
data modify storage voxel-planes:plane p38l.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane p38l.plane-data.model-data.central-axis-offset set value 1.125
data modify storage voxel-planes:plane p38l.plane-data.model-data.translation set value [0f,-0.5f,1.5f]
data modify storage voxel-planes:plane p38l.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {engine-r:{max-hp:330d,offset:[-2.4d,-0.1d,6.2d],width:1,height:1},engine-l:{max-hp:330d,offset:[2.4d,-0.1d,6.2d],width:1,height:1}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {body:{max-hp:360d,offset:[0d,-0.3d,5d],width:1,height:1}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {aileron-r:{max-hp:300d,offset:[-5.6d,0.5d,4.4d],width:1.3,height:1.3},aileron-l:{max-hp:300d,offset:[5.6d,0.5d,4.4d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {elevator:{max-hp:230d,offset:[0d,0.3d,-1.9d],width:1,height:1}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {radder-r:{max-hp:230d,offset:[-2.3d,1.0d,-2d],width:0.9,height:0.9},radder-l:{max-hp:230d,offset:[2.3d,1.0d,-2d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,5.5d],width:0.5,height:0.5}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p38l.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:150,current-ammunition:150,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:9d,bullets:[{offset:[-0.27d,1.65d,8.8d]}]}
data modify storage voxel-planes:weapon p38l.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:45,speed:11d,bullets:[{offset:[-0.55d,1.75d,8.5d]},{offset:[-0.45d,1.8d,8.8d]},{offset:[-0.12d,1.83d,8.6d]},{offset:[0d,1.75d,8.5d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p38l.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p38l.additional.1000lb set value [{kind:1000lb,type:normal,offset:[1d,-0.4d,4.5d],damage:2300,weight:454.0f,cmd:122}]
data modify storage voxel-planes:weapon p38l.additional.1000lb append value {kind:1000lb,type:normal,offset:[-1d,-0.4d,4.5d],damage:2300,weight:454.0f,cmd:122}
data modify storage voxel-planes:weapon p38l.additional.500lb set value [{kind:500lb,type:normal,offset:[1.4d,-0.3d,4.4d],damage:1140,weight:227.0f,cmd:164}]
data modify storage voxel-planes:weapon p38l.additional.500lb append value {kind:500lb,type:normal,offset:[0.8d,-0.4d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon p38l.additional.500lb append value {kind:500lb,type:normal,offset:[-1.4d,-0.3d,4.4d],damage:1140,weight:227.0f,cmd:164}
data modify storage voxel-planes:weapon p38l.additional.500lb append value {kind:500lb,type:normal,offset:[-0.8d,-0.4d,4.4d],damage:1140,weight:227.0f,cmd:164}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon p38l.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket set value [{type:normal,offset:[4.5d,0.0d,5d],damage:500,weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[4.5d,-0.3d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[4.8d,-0.6d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[5.1d,-0.3d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[5.1d,0.0d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.5d,0.0d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.5d,-0.3d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[-4.8d,-0.6d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[-5.1d,-0.3d,5d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p38l.additional.ag-rocket append value {type:normal,damage:500,offset:[-5.1d,0.0d,5d],weight:63.0f,kind:10kg,cmd:66}
