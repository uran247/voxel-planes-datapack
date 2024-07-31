#> plane-data:ju87b/ju87b-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon ju87b set value {base:{},additional:{}}
data modify storage voxel-planes:plane ju87b set value {}

#飛行機データセット
data modify storage voxel-planes:plane ju87b.plane-data.name set value ju87b
data modify storage voxel-planes:plane ju87b.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane ju87b.plane-data.tier set value 1
data modify storage voxel-planes:plane ju87b.plane-data.flight-model.weight set value 3420
data modify storage voxel-planes:plane ju87b.plane-data.flight-model.speed set value {max-speed:383f,cruise-speed:209f,climb-rate:4.2f,stall-speed:128f}
data modify storage voxel-planes:plane ju87b.plane-data.flight-model.engine set value {type:recipro,horse-power:1200,number:1}
data modify storage voxel-planes:plane ju87b.plane-data.flight-model.turn-rate set value {pitch:28f,yaw:14f,roll:82f}
data modify storage voxel-planes:plane ju87b.plane-data.flight-model.energy-loss-rate set value 0.8
data modify storage voxel-planes:plane ju87b.plane-data.model-data.body set value {parking-cmd:30,rolling-cmd:31,flying-cmd:31}
data modify storage voxel-planes:plane ju87b.plane-data.model-data.landing-pitch set value -12
data modify storage voxel-planes:plane ju87b.plane-data.model-data.scale set value [2f,2f,2f]
data modify storage voxel-planes:plane ju87b.plane-data.model-data.translation set value [0f,-0.3f,-1.5f]
data modify storage voxel-planes:plane ju87b.plane-data.model-data.central-axis-offset set value 1.4
data modify storage voxel-planes:plane ju87b.plane-data.seat.position.ridden set value {x:0,y:0.3,z:-2.7}
data modify storage voxel-planes:plane ju87b.plane-data.seat.position.vacant set value {x:0,y:-0.2,z:3}
data modify storage voxel-planes:plane ju87b.plane-data.hp set value {engine:70d,body:70d,aileron:70d,elevetor:60d,radder:60d}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {body:{max-hp:70d,offset:[0d,-0.5d,0d],width:1,height:1}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {engine:{max-hp:70d,offset:[0d,-0.4d,4.7d],width:1,height:1}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {aileron-r:{max-hp:70d,offset:[-3d,-1.0d,2.4d],width:1.5,height:1.5},aileron-l:{max-hp:70d,offset:[3d,-1.0d,2.4d],width:1.5,height:1.5}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {elevator-r:{max-hp:60d,offset:[-1.2d,0.3d,-3.3d],width:0.8,height:0.8},elevator-l:{max-hp:60d,offset:[1.2d,0.3d,-3.3d],width:0.8,height:0.8}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {radder:{max-hp:60d,offset:[0d,0.9d,-3.7d],width:0.9,height:0.9}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {cockpit:{offset:[0d,0.6d,2.8d],width:0.5,height:0.5}}


#デフォルト機銃データセット
data modify storage voxel-planes:weapon ju87b.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:10.5,bullets:[{offset:[1.93d,1.12d,4.38d]},{offset:[-2.27d,1.12d,4.38d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ju87b.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:5,current-ammunition:5,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-4.3d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[4.3d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-4d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[4d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.0d,-1.0d,3.1d],damage:1250,weight:250f,cmd:33}

