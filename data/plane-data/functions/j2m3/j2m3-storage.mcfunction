#> plane-data:j2m3/j2m3-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon j2m3 set value {base:{},additional:{}}
data modify storage voxel-planes:plane j2m3 set value {}

#飛行機データセット
data modify storage voxel-planes:plane j2m3.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane j2m3.plane-data.tier set value 2
data modify storage voxel-planes:plane j2m3.plane-data.flight-model.weight set value 3507.0
data modify storage voxel-planes:plane j2m3.plane-data.flight-model.speed set value {max-speed:596.3f,cruise-speed:360f,climb-rate:17.8f,stall-speed:162f}
data modify storage voxel-planes:plane j2m3.plane-data.flight-model.engine set value {type:recipro,horse-power:1800f,number:1}
data modify storage voxel-planes:plane j2m3.plane-data.flight-model.turn-rate set value {pitch:38f,yaw:25f,roll:142f}
data modify storage voxel-planes:plane j2m3.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane j2m3.plane-data.model-data.body set value {parking-cmd:93,rolling-cmd:94,flying-cmd:95}
data modify storage voxel-planes:plane j2m3.plane-data.model-data.landing-pitch set value -11.5
data modify storage voxel-planes:plane j2m3.plane-data.hp set value {engine:90d,body:110d,aileron:100d,elevetor:80d,radder:90d}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox set value {}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {engine:{max-hp:90d,offset:[0d,0d,3.8d]}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {aileron-r:{max-hp:100d,offset:[-3.2d,-0.3d,1.8d]},aileron-l:{max-hp:100d,offset:[3.2d,-0.3d,1.8d]}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {elevator-r:{max-hp:80d,offset:[-1.3d,0.2d,-3.3d]},elevator-l:{max-hp:80d,offset:[1.3d,0.2d,-3.3d]}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {radder:{max-hp:90d,offset:[0d,1.2d,-3.9d]}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {cockpit:{offset:[0d,0.9d,1.1d]}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon j2m3.base.model1-20mm.data set value {name:"Model1 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:7.5d,bullets:[{offset:[2.26d,-0.35d,2.7d]},{offset:[-2.46d,-0.35d,2.7d]}]}
data modify storage voxel-planes:weapon j2m3.base.model2-20mm.data set value {name:"Model2 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightblue",damage:60,speed:9.5,bullets:[{offset:[1.86d,-0.4d,3.2d]},{offset:[-2.08d,-0.4d,3.2d]}]}
