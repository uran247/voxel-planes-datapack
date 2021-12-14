#> plane-data:p-38l/p38l-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p38l set value {base:{},additional:{}}
data modify storage voxel-planes:plane p38l set value {}

#飛行機データセット
data modify storage voxel-planes:plane p38l.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p38l.plane-data.tier set value 3
data modify storage voxel-planes:plane p38l.plane-data.flight-model.weight set value 3148.0
data modify storage voxel-planes:plane p38l.plane-data.flight-model.speed set value {max-speed:640f,cruise-speed:480,climb-rate:17f,stall-speed:155f}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.engine set value {type:recipro,horse-power:1455f,number:1}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:18f,roll:92f}
data modify storage voxel-planes:plane p38l.plane-data.flight-model.energy-loss-rate set value 0.3
data modify storage voxel-planes:plane p38l.plane-data.model-data.body set value {parking-cmd:144,rolling-cmd:145,flying-cmd:146}
data modify storage voxel-planes:plane p38l.plane-data.model-data.landing-pitch set value -5
data modify storage voxel-planes:plane p38l.plane-data.hp set value {engine:350d,body:350d,aileron:250d,elevetor:230d,radder:230d}
data modify storage voxel-planes:plane p38l.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {engine:{offset:[0d,0d,2d]}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {body:{offset:[0.3d,0d,0d]}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {aileron-r:{offset:[-3.6d,0d,-0.2d]},aileron-l:{offset:[3.6d,0d,-0.2d]}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {elevator-r:{offset:[-1d,0.8d,-5.3d]},elevator-l:{offset:[1d,0.8d,-5.3d]}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {radder:{offset:[0d,1.2d,-5.5d]}}
data modify storage voxel-planes:plane p38l.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,-0.5d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p38l.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:200,current-ammunition:200,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0d,1.4d,3.3d]}]}
data modify storage voxel-planes:weapon p38l.base.13mm.data set value {name:"13mm gun",type:gun,size:13mm,max-ammunition:300,current-ammunition:300,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:8,speed:11d,bullets:[{offset:[0.1d,1.95d,1.6d]},{offset:[-0.1d,1.95d,1.6d]}]}
data modify storage voxel-planes:weapon p38l.additional.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:160,current-ammunition:160,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0d,1.4d,3.3d]},{offset:[2.1d,1.1d,1.9d]},{offset:[-2.1d,1.1d,1.9d]}]}


#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p38l.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p38l.additional.250kg set value [{kind:250kg,type:normal,offset:[0d,-0.8d,-0.5d],damage:1250,weight:250.0f,cmd:33}]

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon p38l.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:8,current-ammunition:8,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon p38l.additional.aa-rocket set value [{type:normal,damage:500,offset:[2.9d,-1d,2.8d],weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon p38l.additional.aa-rocket append value {type:normal,damage:500,offset:[3.3d,-0.91d,2.8d],weight:63.0f,kind:10kg,cmd:66}
