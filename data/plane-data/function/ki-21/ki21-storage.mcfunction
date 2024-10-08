#> plane-data:ki-21/ki21-storage
#
# @within tag/function constructor:add-storage

data modify storage voxel-planes:weapon ki21 set value {base:{},additional:{}}
data modify storage voxel-planes:plane ki21 set value {}

#飛行機データセット
data modify storage voxel-planes:plane ki21.plane-data.name set value ki21
data modify storage voxel-planes:plane ki21.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane ki21.plane-data.tier set value 1
data modify storage voxel-planes:plane ki21.plane-data.flight-model.weight set value 8710.0
data modify storage voxel-planes:plane ki21.plane-data.flight-model.speed set value {max-speed:478f,cruise-speed:380f,climb-rate:7.6f,stall-speed:144f}
data modify storage voxel-planes:plane ki21.plane-data.flight-model.engine set value {type:recipro,horse-power:1500f,number:2}
data modify storage voxel-planes:plane ki21.plane-data.flight-model.turn-rate set value {pitch:60f,yaw:40f,roll:48f}
data modify storage voxel-planes:plane ki21.plane-data.flight-model.energy-loss-rate set value 0.5
data modify storage voxel-planes:plane ki21.plane-data.model-data.body set value {parking-cmd:78,rolling-cmd:79,flying-cmd:80}
data modify storage voxel-planes:plane ki21.plane-data.model-data merge value {rightwing:{offset:[-5.74d,0d,0d]},leftwing:{offset:[5.66d,0d,0d]}}
data modify storage voxel-planes:plane ki21.plane-data.model-data.landing-pitch set value -7.5
data modify storage voxel-planes:plane ki21.plane-data.model-data.scale set value [4f,4f,4f]
data modify storage voxel-planes:plane ki21.plane-data.model-data.translation set value [0f,0.2f,6f]
data modify storage voxel-planes:plane ki21.plane-data.model-data.central-axis-offset set value 1.625
data modify storage voxel-planes:plane ki21.plane-data.seat.position.ridden set value {x:0,y:2,z:-8.2}
data modify storage voxel-planes:plane ki21.plane-data.seat.position.vacant set value {x:0,y:0.5,z:6.5}
data modify storage voxel-planes:plane ki21.plane-data.hp set value {engine:70d,body:80d,aileron:70d,elevetor:60d,radder:70d}
data modify storage voxel-planes:plane ki21.plane-data.hitbox set value {}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {body:{max-hp:80d,offset:[0d,-0.4d,0d],width:1.6,height:1.6}}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {engine-r:{max-hp:70d,offset:[-3d,-0.4d,6.4d],width:1.2,height:1.2},engine-l:{max-hp:70d,offset:[3d,-0.4d,6.4d],width:1.2,height:1.2}}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {aileron-r:{max-hp:70d,offset:[-7d,-0.6d,2.8d],width:2.5,height:2.5},aileron-l:{max-hp:70d,offset:[7d,-0.6d,2.8d],width:2.5,height:2.5}}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {elevator-r:{max-hp:60d,offset:[-2.3d,-0.4d,-6.8d],width:1.4,height:1.4},elevator-l:{max-hp:60d,offset:[2.3d,-0.4d,-6.8d],width:1.4,height:1.4}}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {radder:{max-hp:70d,offset:[0d,1.5d,-7.0d],width:1.6,height:1.6}}
data modify storage voxel-planes:plane ki21.plane-data.hitbox merge value {cockpit:{offset:[0d,0.8d,5.8d],width:0.8,height:0.8}}

#デフォルト爆弾データセット
data modify storage voxel-planes:weapon ki21.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:20,current-ammunition:20,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-1.5d,-0.4d,2d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-1.5d,-0.4d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-1.5d,-0.4d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[1.5d,-0.4d,2d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[1.5d,-0.4d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[1.5d,-0.4d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,-0.3d,6.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,-0.3d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,-0.3d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,-0.3d,2d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,0d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,0d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[0.5d,0d,2d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,-0.3d,6.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,-0.3d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,-0.3d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,-0.3d,2d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,0d,5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,0d,3.5d],damage:250,weight:50f,cmd:84}
data modify storage voxel-planes:weapon ki21.base.bomb.data.bombs append value {kind:50kg,type:normal,offset:[-0.5d,0d,2d],damage:250,weight:50f,cmd:84}
