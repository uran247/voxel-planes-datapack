#> plane-data:spitfiremkix/spitfiremkix-storage
#
# @within function constructor:addstorage

#ストレージリセット
data modify storage voxel-planes:weapon spitfiremkix set value {base:{},additional:{}}
data modify storage voxel-planes:plane spitfiremkix set value {}

#飛行機データセット
data modify storage voxel-planes:plane spitfiremkix.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane spitfiremkix.plane-data.tier set value 3
data modify storage voxel-planes:plane spitfiremkix.plane-data.flight-model.weight set value 3354
data modify storage voxel-planes:plane spitfiremkix.plane-data.flight-model.speed set value {max-speed:650f,cruise-speed:350f,climb-rate:24.1f,stall-speed:128f}
data modify storage voxel-planes:plane spitfiremkix.plane-data.flight-model.engine set value {type:recipro,horse-power:1720f,number:1}
data modify storage voxel-planes:plane spitfiremkix.plane-data.flight-model.turn-rate set value {pitch:42f,yaw:32f,roll:130f}
data modify storage voxel-planes:plane spitfiremkix.plane-data.flight-model.energy-loss-rate set value 0.3
data modify storage voxel-planes:plane spitfiremkix.plane-data.model-data.body set value {parking-cmd:16,rolling-cmd:17,flying-cmd:18}
data modify storage voxel-planes:plane spitfiremkix.plane-data.model-data.landing-pitch set value -11.0
data modify storage voxel-planes:plane spitfiremkix.plane-data.hp set value {engine:130d,body:140d,aileron:130d,elevetor:120d,radder:120d}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox set value {}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox merge value {engine:{offset:[0d,0d,2d]}}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox merge value {aileron-r:{offset:[-2.2d,-0.4d,0.4d]},aileron-l:{offset:[2.2d,-0.4d,0.4d]}}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox merge value {elevator-r:{offset:[-0.6d,0.1d,-4.3d]},elevator-l:{offset:[0.6d,0.1d,-4.3d]}}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox merge value {radder:{offset:[0d,0.7d,-4.3d]}}
data modify storage voxel-planes:plane spitfiremkix.plane-data.hitbox merge value {cockpit:{offset:[0d,0.4d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon spitfiremkix.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:120,current-ammunition:120,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:70,speed:10.5d,bullets:[{offset:[-1.8d,0.9d,2.6d]},{offset:[1.8d,0.9d,2.6d]}]}
data modify storage voxel-planes:weapon spitfiremkix.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:250,current-ammunition:250,max-cooltime:2,current-cooltime:0,max-reload:210,current-reload:0,tracer:"yellow",damage:44,speed:11d,bullets:[{offset:[-1.9d,0.9d,1.8d]},{offset:[1.9d,0.9d,1.8d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon spitfiremkix.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon spitfiremkix.additional.250lb set value [{kind:250lb,type:normal,offset:[0d,-0.9d,-0.4d],damage:500,weight:113,cmd:131}]
