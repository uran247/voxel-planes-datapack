#> plane-data:sbd-3/sbd3-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon sbd3 set value {base:{},additional:{}}
data modify storage voxel-planes:plane sbd3 set value {}

#飛行機データセット
data modify storage voxel-planes:plane sbd3.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane sbd3.plane-data.tier set value 1
data modify storage voxel-planes:plane sbd3.plane-data.flight-model.weight set value 3660
data modify storage voxel-planes:plane sbd3.plane-data.flight-model.speed set value {max-speed:406f,cruise-speed:298f,climb-rate:8.6f,stall-speed:113f}
data modify storage voxel-planes:plane sbd3.plane-data.flight-model.engine set value {type:recipro,horse-power:1000f,number:1}
data modify storage voxel-planes:plane sbd3.plane-data.flight-model.turn-rate set value {pitch:28f,yaw:18f,roll:78f}
data modify storage voxel-planes:plane sbd3.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane sbd3.plane-data.model-data.body set value {parking-cmd:22,rolling-cmd:23,flying-cmd:24}
data modify storage voxel-planes:plane sbd3.plane-data.model-data.landing-pitch set value -13
data modify storage voxel-planes:plane sbd3.plane-data.hitbox set value {}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {body:{max-hp:150d,offset:[0.4d,0d,0d]}}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {engine:{max-hp:130d,offset:[0.4d,-0.2d,3d]}}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {aileron-r:{max-hp:130d,offset:[-4d,-0.1d,1d]},aileron-l:{max-hp:130d,offset:[4d,-0.1d,1d]}}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {elevator-r:{max-hp:120d,offset:[-0.8d,0.3d,-4.2d]},elevator-l:{max-hp:120d,offset:[1.6d,0.3d,-4.2d]}}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {radder:{max-hp:120d,offset:[0.4d,1.1d,-4.7d]}}
data modify storage voxel-planes:plane sbd3.plane-data.hitbox merge value {cockpit:{offset:[0.4d,0.9d,1.9d]}}


#デフォルト機銃データセット
data modify storage voxel-planes:weapon sbd3.base.12p7mm.data set value {name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:180,current-ammunition:180,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:28,speed:11,bullets:[{offset:[0.75d,2.1d,4d]},{offset:[0d,2.1d,4d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon sbd3.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:1,current-ammunition:1,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon sbd3.base.bomb.data.bombs append value {kind:1000lb,type:normal,offset:[0.4d,-1.1d,1.3d],damage:2300,weight:454.0f,cmd:122}
