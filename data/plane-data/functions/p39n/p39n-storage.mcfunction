#> plane-data:p39n/p39n-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon p39n set value {base:{},additional:{}}
data modify storage voxel-planes:plane p39n set value {}

#飛行機データセット
data modify storage voxel-planes:plane p39n.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane p39n.plane-data.tier set value 2
data modify storage voxel-planes:plane p39n.plane-data.flight-model.weight set value 3370
data modify storage voxel-planes:plane p39n.plane-data.flight-model.speed set value {max-speed:621.2f,cruise-speed:321.9f,climb-rate:19.3f,stall-speed:152.9f}
data modify storage voxel-planes:plane p39n.plane-data.flight-model.engine set value {type:recipro,horse-power:1200f,number:1}
data modify storage voxel-planes:plane p39n.plane-data.flight-model.turn-rate set value {pitch:40f,yaw:20f,roll:106}
data modify storage voxel-planes:plane p39n.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane p39n.plane-data.model-data.body set value {parking-cmd:180,rolling-cmd:181,flying-cmd:182}
data modify storage voxel-planes:plane p39n.plane-data.model-data.landing-pitch set value -1.0
data modify storage voxel-planes:plane p39n.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane p39n.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane p39n.plane-data.model-data.central-axis-offset set value 1.75
data modify storage voxel-planes:plane p39n.plane-data.hitbox set value {}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {engine:{max-hp:170d,offset:[0d,-0.6d,2.5d],width:1,height:1}}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {aileron-r:{max-hp:170d,offset:[-2.7d,-1d,2.6d],width:1.5,height:1.5},aileron-l:{max-hp:170d,offset:[2.7d,-1d,2.6d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {elevator-r:{max-hp:150d,offset:[-1.2d,0.0d,-1.7d],width:0.8,height:0.8},elevator-l:{max-hp:150d,offset:[1.2d,0.0d,-1.7d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {radder:{max-hp:160d,offset:[0d,0.5d,-1.9d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,3.2d],width:0.4,height:0.4}}
data modify storage voxel-planes:plane p39n.plane-data.hitbox merge value {body:{max-hp:190d,offset:[0d,-0.5d,1d],width:1,height:1}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon p39n.base.7p7mm set value {data:{name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:300,current-ammunition:300,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightgreen",damage:12,speed:10.5,bullets:[{offset:[-2.9d,1.45d,3.5d]},{offset:[-2.8d,1.45d,3.5d]},{offset:[2.9d,1.45d,3.5d]},{offset:[2.8d,1.45d,3.5d]}]}}
data modify storage voxel-planes:weapon p39n.base.12p7mm set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:200,current-ammunition:200,max-cooltime:2,current-cooltime:0,max-reload:220,current-reload:0,tracer:"lightblue",damage:20,speed:11d,bullets:[{offset:[-0.35d,2.2d,5d]},{offset:[0.1d,2.2d,5d]}]}}
data modify storage voxel-planes:weapon p39n.base.37mm set value {data:{name:"37mm gun",type:gun,size:37mm,max-ammunition:150,current-ammunition:150,max-cooltime:4,current-cooltime:0,max-reload:350,current-reload:0,tracer:"yellow",damage:65,speed:7d,bullets:[{offset:[-0.12d,1.8d,6.1d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon p39n.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon p39n.additional.500lb set value [{kind:500lb,type:normal,offset:[0d,-0.7d,2.7d],damage:1140,weight:227.0f,cmd:164}]

