#> plane-data:n1k2/n1k2-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon n1k2 set value {base:{},additional:{}}
data modify storage voxel-planes:plane n1k2 set value {}

#飛行機データセット
data modify storage voxel-planes:plane n1k2.plane-data.name set value n1k2
data modify storage voxel-planes:plane n1k2.plane-data.plane-type set value fighter
data modify storage voxel-planes:plane n1k2.plane-data.tier set value 3
data modify storage voxel-planes:plane n1k2.plane-data.flight-model.weight set value 3300.0
data modify storage voxel-planes:plane n1k2.plane-data.flight-model.speed set value {max-speed:644f,cruise-speed:370f,climb-rate:13.7f,stall-speed:149f}
data modify storage voxel-planes:plane n1k2.plane-data.flight-model.engine set value {type:recipro,horse-power:1990f,number:1}
data modify storage voxel-planes:plane n1k2.plane-data.flight-model.turn-rate set value {pitch:39f,yaw:20f,roll:120f}
data modify storage voxel-planes:plane n1k2.plane-data.flight-model.energy-loss-rate set value 0.4
data modify storage voxel-planes:plane n1k2.plane-data.model-data.body set value {parking-cmd:107,rolling-cmd:108,flying-cmd:109}
data modify storage voxel-planes:plane n1k2.plane-data.model-data.landing-pitch set value -14.0
data modify storage voxel-planes:plane n1k2.plane-data.model-data.scale set value [1f,1f,1f]
data modify storage voxel-planes:plane n1k2.plane-data.model-data.translation set value [0f,-0.5f,0.7f]
data modify storage voxel-planes:plane n1k2.plane-data.model-data.central-axis-offset set value 1.375
data modify storage voxel-planes:plane n1k2.plane-data.seat.position.ridden set value {x:0,y:0,z:-3.5}
data modify storage voxel-planes:plane n1k2.plane-data.seat.position.vacant set value {x:0,y:-0.3,z:1}
data modify storage voxel-planes:plane n1k2.plane-data.hp set value {engine:100d,body:110d,aileron:90d,elevetor:70d,radder:70d}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox set value {}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {body:{max-hp:110d,offset:[0d,-0.6d,0d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {engine:{max-hp:100d,offset:[0d,-0.4d,3.3d],width:1.1,height:1.1}}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {aileron-r:{max-hp:90d,offset:[-3.2d,-1.0d,2d],width:1.5,height:1.5},aileron-l:{max-hp:90d,offset:[3.2d,-1.0d,2d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {elevator-r:{max-hp:70d,offset:[-1.3d,-0.0d,-3.3d],width:0.8,height:0.8},elevator-l:{max-hp:70d,offset:[1.3d,-0.0d,-3.3d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {radder:{max-hp:70d,offset:[0d,0.7d,-3.6d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane n1k2.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,1.8d],width:0.4,height:0.4}}

#デフォルト機銃データセット
data modify storage voxel-planes:weapon n1k2.base.20mm.data set value {name:"20mm gun",type:gun,size:20mm,max-ammunition:225,current-ammunition:225,max-cooltime:2,current-cooltime:0,max-reload:280,current-reload:0,tracer:"orange",damage:72,speed:9.5d,bullets:[{offset:[2.22d,-0.35d,3d]},{offset:[-2.22d,-0.35d,3d]},{offset:[2.54d,-0.35d,3d]},{offset:[-2.54d,-0.35d,3d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon n1k2.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:2,current-ammunition:2,max-reload:3600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon n1k2.additional.250kg set value [{kind:250kg,type:normal,offset:[-2.6d,-0.7d,1.9d],damage:1250,weight:250,cmd:77}]
data modify storage voxel-planes:weapon n1k2.additional.250kg append value {kind:250kg,type:normal,offset:[2.6d,-0.7d,1.9d],damage:1250,weight:250,cmd:77}

