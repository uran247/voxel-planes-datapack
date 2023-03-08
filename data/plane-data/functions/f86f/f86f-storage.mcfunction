#> plane-data:f86f/f86f-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon f86f set value {base:{},additional:{}}
data modify storage voxel-planes:plane f86f set value {}

#飛行機データセット
data modify storage voxel-planes:plane f86f.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane f86f.plane-data.tier set value 5
data modify storage voxel-planes:plane f86f.plane-data.flight-model.weight set value 6894
data modify storage voxel-planes:plane f86f.plane-data.flight-model.speed set value {max-speed:1106f,cruise-speed:885f,climb-rate:46f,stall-speed:200f}
data modify storage voxel-planes:plane f86f.plane-data.flight-model.engine set value {type:jet,thrust:2680.7f,number:1}
data modify storage voxel-planes:plane f86f.plane-data.flight-model.turn-rate set value {pitch:30f,yaw:15f,roll:205f}
data modify storage voxel-planes:plane f86f.plane-data.flight-model.energy-loss-rate set value 0.6
data modify storage voxel-planes:plane f86f.plane-data.model-data.body set value {parking-cmd:172,rolling-cmd:172,flying-cmd:173}
data modify storage voxel-planes:plane f86f.plane-data.model-data.landing-pitch set value 0
data modify storage voxel-planes:plane f86f.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane f86f.plane-data.model-data.translation set value [0f,1.5f,0f]
data modify storage voxel-planes:plane f86f.plane-data.hitbox set value {}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {engine:{max-hp:410d,offset:[0d,0d,-2d]}}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {aileron-r:{max-hp:400d,offset:[-3d,-0.5d,-1d]},aileron-l:{max-hp:400d,offset:[3d,-0.5d,-1d]}}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {elevator-r:{max-hp:320d,offset:[-1d,0.9d,-6.5d]},elevator-l:{max-hp:320d,offset:[1d,0.9d,-6.5d]}}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {radder:{max-hp:300d,offset:[0d,2d,-6d]}}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {cockpit:{offset:[0d,1d,2.5d]}}
data modify storage voxel-planes:plane f86f.plane-data.hitbox merge value {body:{max-hp:420d,offset:[0d,0d,0d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon f86f.base.gun set value {data:{name:"12.7mm gun",type:gun,size:12p7mm,max-ammunition:300,current-ammunition:300,max-cooltime:1,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightblue",damage:65,speed:10.9d,bullets:[{offset:[0.45d,1.9d,3.6d]},{offset:[0.45d,1.75d,3.6d]},{offset:[0.45d,1.6d,3.6d]},{offset:[-0.75d,1.9d,3.6d]},{offset:[-0.75d,1.75d,3.6d]},{offset:[-0.75d,1.6d,3.6d]}]}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon f86f.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon f86f.additional.1000lb set value [{kind:1000lb,type:normal,offset:[-2.2d,-0.7d,-0.8d],damage:2300,weight:454.0f,cmd:122}]
data modify storage voxel-planes:weapon f86f.additional.1000lb append value {kind:1000lb,type:normal,offset:[2.2d,-0.7d,-0.8d],damage:2300,weight:454.0f,cmd:122}

#デフォルトミサイルデータセット
data modify storage voxel-planes:weapon f86f.base.missile.data set value {name:missile,type:ir-missile,max-ammunition:2,current-ammunition:2,max-reload:600,current-reload:0,lockon-time:0,missiles:[]}
data modify storage voxel-planes:weapon f86f.additional.missile set value [{kind:70kg,type:ir-missile,offset:[-2.2d,0.9d,-0.8d],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:7.2f}]
data modify storage voxel-planes:weapon f86f.additional.missile append value {kind:70kg,type:ir-missile,offset:[2.2d,0.9d,-0.8d],damage:730,weight:70,cmd:174,turn-rate:9.6f,max-speed:7.2f}