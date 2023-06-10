#> plane-data:bf109g/bf109g-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon bf109g set value {base:{},additional:{}}
data modify storage voxel-planes:plane bf109g set value {}

#飛行機データセット
data modify storage voxel-planes:plane bf109g.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane bf109g.plane-data.tier set value 4
data modify storage voxel-planes:plane bf109g.plane-data.flight-model.weight set value 3148.0
data modify storage voxel-planes:plane bf109g.plane-data.flight-model.speed set value {max-speed:640f,cruise-speed:480,climb-rate:17f,stall-speed:155f}
data modify storage voxel-planes:plane bf109g.plane-data.flight-model.engine set value {type:recipro,horse-power:1455f,number:1}
data modify storage voxel-planes:plane bf109g.plane-data.flight-model.turn-rate set value {pitch:36f,yaw:18f,roll:92f}
data modify storage voxel-planes:plane bf109g.plane-data.flight-model.energy-loss-rate set value 0.3
data modify storage voxel-planes:plane bf109g.plane-data.model-data.body set value {parking-cmd:53,rolling-cmd:54,flying-cmd:55}
data modify storage voxel-planes:plane bf109g.plane-data.model-data.landing-pitch set value -15.5
data modify storage voxel-planes:plane bf109g.plane-data.hp set value {engine:350d,body:350d,aileron:250d,elevetor:230d,radder:230d}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox set value {}
data modify storage voxel-planes:plane bf109g.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane bf109g.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane bf109g.plane-data.model-data.translation set value [0f,0f,0.7f]
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {engine:{max-hp:100d,offset:[0d,-0.5d,2.2d],width:1,height:1}}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {body:{max-hp:330d,offset:[0.3d,-0.5d,0d],width:1,height:1}}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {aileron-r:{max-hp:210d,offset:[-2.5d,-0.5d,0.4d],width:1,height:1},aileron-l:{max-hp:210d,offset:[2.5d,-0.5d,0.4d],width:1,height:1}}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {elevator-r:{max-hp:180d,offset:[-0.7d,0.5d,-4.6d],width:0.6,height:0.6},elevator-l:{max-hp:180d,offset:[0.7d,0.5d,-4.6d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {radder:{max-hp:200d,offset:[0d,0.9d,-4.7d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane bf109g.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,0.5d],width:0.3,height:0.3}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon bf109g.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:200,current-ammunition:200,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0d,1.4d,3.3d]}]}
data modify storage voxel-planes:weapon bf109g.base.13mm.data set value {name:"13mm gun",type:gun,size:13mm,max-ammunition:300,current-ammunition:300,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:56,speed:11d,bullets:[{offset:[0.1d,1.95d,1.6d]},{offset:[-0.1d,1.95d,1.6d]}]}
data modify storage voxel-planes:weapon bf109g.additional.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:160,current-ammunition:160,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightgreen",damage:90,speed:9d,bullets:[{offset:[0d,1.4d,3.3d]},{offset:[2.1d,1.1d,1.9d]},{offset:[-2.1d,1.1d,1.9d]}]}


#デフォルト爆弾データセット
data modify storage voxel-planes:weapon bf109g.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon bf109g.additional.250kg set value [{kind:250kg,type:normal,offset:[0d,-0.8d,-0.5d],damage:1250,weight:250.0f,cmd:33}]

#デフォルトロケット弾データセット
data modify storage voxel-planes:weapon bf109g.base.rocket.data set value {name:rocket,type:rocket,max-ammunition:8,current-ammunition:8,max-reload:1200,current-reload:0,rockets:[]}
data modify storage voxel-planes:weapon bf109g.additional.aa-rocket set value [{type:normal,damage:500,offset:[2.9d,-1d,2.8d],weight:63.0f,kind:10kg,cmd:66}]
data modify storage voxel-planes:weapon bf109g.additional.aa-rocket append value {type:normal,damage:500,offset:[3.3d,-0.91d,2.8d],weight:63.0f,kind:10kg,cmd:66}
