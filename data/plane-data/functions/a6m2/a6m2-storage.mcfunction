#> plane-data:a6m2/a6m2-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon a6m2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane a6m2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane a6m2.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane a6m2.plane-data.tier set value 2
data modify storage voxel-planes:plane a6m2.plane-data.flight-model.weight set value 2421
data modify storage voxel-planes:plane a6m2.plane-data.flight-model.speed set value {max-speed:533.4f,cruise-speed:300f,climb-rate:15.7f,stall-speed:104f}
data modify storage voxel-planes:plane a6m2.plane-data.flight-model.engine set value {type:recipro,horse-power:940f,number:1}
data modify storage voxel-planes:plane a6m2.plane-data.flight-model.turn-rate set value {pitch:40f,yaw:30f,roll:80f}
data modify storage voxel-planes:plane a6m2.plane-data.flight-model.energy-loss-rate set value 0.2
data modify storage voxel-planes:plane a6m2.plane-data.model-data.body set value {parking-cmd:87,rolling-cmd:88,flying-cmd:89}
data modify storage voxel-planes:plane a6m2.plane-data.model-data.landing-pitch set value -11.0
data modify storage voxel-planes:plane a6m2.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane a6m2.plane-data.model-data.translation set value [0f,0f,0.5f]
data modify storage voxel-planes:plane a6m2.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane a6m2.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {engine:{max-hp:100d,offset:[0d,-0.4d,3.2d],width:1,height:1}}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {aileron-r:{max-hp:90d,offset:[-3.2d,-0.8d,1.4d],width:1.3,height:1.3},aileron-l:{max-hp:90d,offset:[3.2d,-0.8d,1.4d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {elevator-r:{max-hp:70d,offset:[-1.3d,-0.3d,-3.3d],width:0.6,height:0.6},elevator-l:{max-hp:70d,offset:[1.3d,-0.3d,-3.3d],width:0.6,height:0.6}}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {radder:{max-hp:70d,offset:[0d,0.4d,-3.8d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,1.8d],width:0.3,height:0.3}}
data modify storage voxel-planes:plane a6m2.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,-0.5d,0d],width:1,height:1}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a6m2.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:60,current-ammunition:60,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:7.5d,bullets:[{offset:[1.95d,0.2d,2.1d]},{offset:[-2.05d,0.2d,2.1d]}]}
data modify storage voxel-planes:weapon a6m2.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:700,current-ammunition:700,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:9.5,bullets:[{offset:[0.22d,0.55d,2.5d]},{offset:[-0.26d,0.55d,2.5d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon a6m2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon a6m2.additional.60kg set value [{kind:60kg,type:normal,offset:[-3.1d,-0.6d,1d],damage:300,weight:60f,cmd:76}]
data modify storage voxel-planes:weapon a6m2.additional.60kg append value {kind:60kg,type:normal,offset:[3.1d,-0.6d,1d],damage:300,weight:60f,cmd:76}

