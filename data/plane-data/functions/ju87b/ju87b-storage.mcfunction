#> plane-data:ju87b/ju87b-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon ju87b set value {base:{},additional:{}}
data modify storage voxel-planes:plane ju87b set value {}

#飛行機データセット
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
data modify storage voxel-planes:plane ju87b.plane-data.model-data.translation set value [0f,0.2f,-1.5f]
data modify storage voxel-planes:plane ju87b.plane-data.hp set value {engine:70d,body:70d,aileron:70d,elevetor:60d,radder:60d}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {body:{max-hp:70d,offset:[0d,0d,0d]}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {engine:{max-hp:70d,offset:[0d,0d,5d]}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {aileron-r:{max-hp:70d,offset:[-3d,-0.3d,2.7d]},aileron-l:{max-hp:70d,offset:[3d,-0.3d,2.7d]}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {elevator-r:{max-hp:60d,offset:[-1.2d,0.6d,-3d]},elevator-l:{max-hp:60d,offset:[1.2d,0.6d,-3d]}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {radder:{max-hp:60d,offset:[0d,1.1d,-3.3d]}}
data modify storage voxel-planes:plane ju87b.plane-data.hitbox merge value {cockpit:{offset:[0d,0.7d,3.4d]}}


#デフォルト機銃データセット
data modify storage voxel-planes:weapon ju87b.base.7p7mm.data set value {name:"7.7mm gun",type:gun,size:7p7mm,max-ammunition:500,current-ammunition:500,max-cooltime:1,current-cooltime:0,max-reload:140,current-reload:0,tracer:"lightblue",damage:9,speed:10.5,bullets:[{offset:[1.93d,1.12d,4.38d]},{offset:[-2.27d,1.12d,4.38d]}]}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ju87b.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:5,current-ammunition:5,max-reload:500,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-4.3d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[4.3d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-4d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[4d,-0.58d,2.6d],damage:250,weight:50f,cmd:123}
data modify storage voxel-planes:weapon ju87b.base.bomb.data.bombs append value {kind:250kg,type:normal,offset:[0.0d,-1.0d,3.1d],damage:1250,weight:250f,cmd:33}

