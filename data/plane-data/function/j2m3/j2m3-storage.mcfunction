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
data modify storage voxel-planes:plane j2m3.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane j2m3.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane j2m3.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane j2m3.plane-data.seat.position.ridden set value {x:0,y:0,z:-3.3}
data modify storage voxel-planes:plane j2m3.plane-data.seat.position.vacant set value {x:0,y:-0.2,z:0.8}
data modify storage voxel-planes:plane j2m3.plane-data.hp set value {engine:90d,body:110d,aileron:100d,elevetor:80d,radder:90d}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox set value {}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,-0.6d,0d],width:1.3,height:1.3}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {engine:{max-hp:90d,offset:[0d,-0.4d,3.8d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {aileron-r:{max-hp:100d,offset:[-3d,-0.9d,2.2d],width:1.4,height:1.4},aileron-l:{max-hp:100d,offset:[3d,-0.9d,2.2d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {elevator-r:{max-hp:80d,offset:[-1.3d,-0.1d,-2.7d],width:0.7,height:0.7},elevator-l:{max-hp:80d,offset:[1.3d,-0.1d,-2.7d],width:0.7,height:0.7}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {radder:{max-hp:90d,offset:[0d,0.8d,-3.2d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane j2m3.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,1.6d],width:0.5,height:0.5}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon j2m3.base.model1-20mm.data set value {name:"Model1 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"yellow",damage:60,speed:7.5d,bullets:[{offset:[2.4d,1.1d,3.6d]},{offset:[-2.25d,1.1d,3.6d]}]}
data modify storage voxel-planes:weapon j2m3.base.model2-20mm.data set value {name:"Model2 20mm gun",type:gun,size:20mm,max-ammunition:100,current-ammunition:100,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"lightblue",damage:60,speed:9.5,bullets:[{offset:[2d,1.05d,4.1d]},{offset:[-1.95d,1.05d,4.1d]}]}
