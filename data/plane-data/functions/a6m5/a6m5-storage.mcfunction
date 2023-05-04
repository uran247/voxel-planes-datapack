#> plane-data:a6m5/a6m5-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon a6m5 set value {base:{},additional:{}}
data modify storage voxel-planes:plane a6m5 set value {}

#飛行機データセット
data modify storage voxel-planes:plane a6m5.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane a6m5.plane-data.tier set value 3
data modify storage voxel-planes:plane a6m5.plane-data.flight-model.weight set value 2743
data modify storage voxel-planes:plane a6m5.plane-data.flight-model.speed set value {max-speed:565f,cruise-speed:330f,climb-rate:14.2f,stall-speed:120f}
data modify storage voxel-planes:plane a6m5.plane-data.flight-model.engine set value {type:recipro,horse-power:1130f,number:1}
data modify storage voxel-planes:plane a6m5.plane-data.flight-model.turn-rate set value {pitch:44f,yaw:37f,roll:80f}
data modify storage voxel-planes:plane a6m5.plane-data.flight-model.energy-loss-rate set value 0.2
data modify storage voxel-planes:plane a6m5.plane-data.model-data.body set value {parking-cmd:7,rolling-cmd:8,flying-cmd:9}
data modify storage voxel-planes:plane a6m5.plane-data.model-data.landing-pitch set value -12.5
data modify storage voxel-planes:plane a6m5.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane a6m5.plane-data.model-data.translation set value [0f,0f,0.8f]
data modify storage voxel-planes:plane a6m5.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox set value {}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {engine:{max-hp:100d,offset:[0d,0d,2.7d]}}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {aileron-r:{max-hp:90d,offset:[-2.7d,0d,0.5d]},aileron-l:{max-hp:90d,offset:[2.7d,0d,0.5d]}}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {elevator-r:{max-hp:70d,offset:[-1.3d,0.1d,-4.2d]},elevator-l:{max-hp:70d,offset:[1.3d,0.1d,-4.2d]}}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {radder:{max-hp:70d,offset:[-0.1d,1d,-4.6d]}}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane a6m5.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon a6m5.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:125,current-ammunition:125,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:72,speed:9.5d,bullets:[{offset:[1.9d,0.2d,2.1d]},{offset:[-1.95d,0.2d,2.1d]}]}
data modify storage voxel-planes:weapon a6m5.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:700,current-ammunition:700,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:11,speed:9.5,bullets:[{offset:[0.15d,0.55d,2.5d]},{offset:[-0.25d,0.55d,2.5d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon a6m5.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon a6m5.additional.60kg set value [{kind:60kg,type:normal,offset:[-3d,-0.55d,0.5d],damage:300,weight:60f,cmd:76}]
data modify storage voxel-planes:weapon a6m5.additional.60kg append value {kind:60kg,type:normal,offset:[3d,-0.55d,0.5d],damage:300,weight:60f,cmd:76}

