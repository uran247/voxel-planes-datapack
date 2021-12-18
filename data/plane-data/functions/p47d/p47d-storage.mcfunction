#> plane-data:p47d/p47d-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p47d set value {base:{},additional:{}}
data modify storage voxel-planes:plane p47d set value {}

#飛行機データセット
data modify storage voxel-planes:plane p47d.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p47d.plane-data.tier set value 3
data modify storage voxel-planes:plane p47d.plane-data.flight-model.weight set value 6577
data modify storage voxel-planes:plane p47d.plane-data.flight-model.speed set value {max-speed:686f,cruise-speed:411f,climb-rate:16.6f,stall-speed:169f}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.engine set value {type:recipro,horse-power:2000,number:1}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.turn-rate set value {pitch:28.8,yaw:17.3,roll:80}
data modify storage voxel-planes:plane p47d.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane p47d.plane-data.model-data.body set value {parking-cmd:56,rolling-cmd:57,flying-cmd:58}
data modify storage voxel-planes:plane p47d.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane p47d.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {engine:{max-hp:360d,offset:[0d,0d,5d]}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {aileron-r:{max-hp:330d,offset:[-3.1d,-0.2d,2.5d]},aileron-l:{max-hp:330d,offset:[3.1d,-0.2d,2.5d]}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {elevator-r:{max-hp:260d,offset:[-1.3d,0.2d,-3.5d]},elevator-l:{max-hp:260d,offset:[1.3d,0.2d,-3.5d]}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {radder:{max-hp:260d,offset:[0d,1.2d,-3.5d]}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,2.2d]}}
data modify storage voxel-planes:plane p47d.plane-data.hitbox merge value {body:{max-hp:400d,offset:[0d,0d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p47d.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:425,current-ammunition:425,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:45,speed:11,bullets:[{offset:[-3.3d,1.2d,3.9d]},{offset:[-3.15d,1.15d,4.1d]},{offset:[-3d,1.1d,4.2d]},{offset:[-2.85d,1.1d,4.3d]},{offset:[3.15d,1.2d,3.9d]},{offset:[3d,1.15d,4.1d]},{offset:[2.85d,1.1d,4.2d]},{offset:[2.7d,1.1d,4.3d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p47d.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p47d.additional.1000lb set value [{kind:1000lb,type:normal,offset:[-1.2d,-1d,2.1d],damage:2300,weight:454.0f,cmd:122}]
data modify storage voxel-planes:weapon p47d.additional.1000lb append value {kind:1000lb,type:normal,offset:[1.2d,-1d,2.1d],damage:2300,weight:454.0f,cmd:122}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon p47d.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket set value [{type:normal,offset:[2.0d,-1d,2.8d],damage:500,weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[2.3d,-1.1d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[2.6d,-1.2d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[2.9d,-1.3d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[3.2d,-1.4d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.0d,-1d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.3d,-1.1d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.6d,-1.2d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.9d,-1.3d,2.8d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p47d.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.2d,-1.4d,2.8d],weight:63.0f,kind:10kg,cmd:66}
