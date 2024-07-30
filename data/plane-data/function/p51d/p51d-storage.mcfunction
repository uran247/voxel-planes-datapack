#> plane-data:p51d/p51d-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p51d set value {base:{},additional:{}}
data modify storage voxel-planes:plane p51d set value {}

#飛行機データセット
data modify storage voxel-planes:plane p51d.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p51d.plane-data.tier set value 4
data modify storage voxel-planes:plane p51d.plane-data.flight-model.weight set value 4173
data modify storage voxel-planes:plane p51d.plane-data.flight-model.speed set value {max-speed:710f,cruise-speed:583f,climb-rate:16f,stall-speed:160f}
data modify storage voxel-planes:plane p51d.plane-data.flight-model.engine set value {type:recipro,horse-power:1490f,number:1}
data modify storage voxel-planes:plane p51d.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:18f,roll:121.8f}
data modify storage voxel-planes:plane p51d.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane p51d.plane-data.model-data.body set value {parking-cmd:177,rolling-cmd:178,flying-cmd:179}
data modify storage voxel-planes:plane p51d.plane-data.model-data.landing-pitch set value -13
data modify storage voxel-planes:plane p51d.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane p51d.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane p51d.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane p51d.plane-data.seat.position.ridden set value {x:0,y:0.5,z:-4.2}
data modify storage voxel-planes:plane p51d.plane-data.seat.position.vacant set value {x:0,y:-0.5,z:0.8}
data modify storage voxel-planes:plane p51d.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {engine:{max-hp:300,offset:[0d,-0.6d,4d],width:1,height:1}}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {aileron-r:{max-hp:290,offset:[-3d,-1.1d,1.5d],width:1.5,height:1.5},aileron-l:{max-hp:290,offset:[3d,-1.1d,1.5d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {elevator-r:{max-hp:260,offset:[-1.2d,0.0d,-3d],width:0.7,height:0.7},elevator-l:{max-hp:260,offset:[1.2d,0.0d,-3d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {radder:{max-hp:280,offset:[0d,0.6d,-3.7d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,1.4d],width:0.5,height:0.5}}
data modify storage voxel-planes:plane p51d.plane-data.hitbox merge value {body:{max-hp:320,offset:[0d,-0.7d,0d],width:1.1,height:1.1}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p51d.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:310,current-ammunition:310,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"lightblue",damage:55,speed:11,bullets:[{offset:[1.8d,1.15d,2.2d]},{offset:[2d,1.15d,2.2d]},{offset:[2.2d,1.2d,2.2d]},{offset:[-1.8d,1.15d,2.2d]},{offset:[-2d,1.15d,2.2d]},{offset:[-2.2d,1.15d,2.2d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p51d.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p51d.additional.500lb set value [{kind:500lb,type:normal,offset:[2.4d,-0.7d,1.4d],damage:1140,weight:227.0f,cmd:164}]
data modify storage voxel-planes:weapon p51d.additional.500lb append value {kind:500lb,type:normal,offset:[-2.4d,-0.7d,1.4d],damage:1140,weight:227.0f,cmd:164}

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon p51d.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:0,current-ammunition:0,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon p51d.additional.ag-rocket set value [{type:normal,offset:[2.4d,-0.8d,1.9d],damage:500,weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon p51d.additional.ag-rocket append value {type:normal,damage:500,offset:[2.8d,-0.75d,1.9d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p51d.additional.ag-rocket append value {type:normal,damage:500,offset:[3.2d,-0.7d,1.9d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p51d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.4d,-0.8d,1.9d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p51d.additional.ag-rocket append value {type:normal,damage:500,offset:[-2.8d,-0.75d,1.9d],weight:63.0f,kind:10kg,cmd:66}
data modify storage voxel-planes:weapon p51d.additional.ag-rocket append value {type:normal,damage:500,offset:[-3.2d,-0.7d,1.9d],weight:63.0f,kind:10kg,cmd:66}
