#> plane-data:mosquitobmk16/mosquitobmk16-storage
#
# @within tag/function constructor:add-storage

#ストレージリセット
data modify storage voxel-planes:weapon mosquitobmk16 set value {base:{},additional:{}}
data modify storage voxel-planes:plane mosquitobmk16 set value {}

#飛行機データセット
data modify storage voxel-planes:plane mosquitobmk16.plane-data.name set value mosquitobmk16
data modify storage voxel-planes:plane mosquitobmk16.plane-data.plane-type set value bomber
data modify storage voxel-planes:plane mosquitobmk16.plane-data.tier set value 3
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.weight set value 8210f
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.speed set value {max-speed:668.0f,cruise-speed:525.0f,climb-rate:14.5f,stall-speed:160.0f}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.engine set value {type:recipro,horse-power:1710f,number:2}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.turn-rate set value {pitch:25.7f,yaw:20.5f,roll:100f}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.flight-model.energy-loss-rate set value 0.6f
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.body set value {parking-cmd:165,rolling-cmd:166,flying-cmd:167}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.landing-pitch set value -11.0
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.scale set value [16.52f,16.52f,16.52f]
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.translation set value [0f,-0.25f,0f]
data modify storage voxel-planes:plane mosquitobmk16.plane-data.model-data.central-axis-offset set value 2.62
data modify storage voxel-planes:plane mosquitobmk16.plane-data.seat.position.ridden set value {x:0,y:1,z:-4.2}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.seat.position.vacant set value {x:0,y:0.25,z:3.25}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox set value {}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {engine-r:{max-hp:170,offset:[-2.6d,-1d,3.5d],width:1f,height:1f},engine-l:{max-hp:170,offset:[2.6d,-1d,3.5d],width:1f,height:1f}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {aileron-r:{max-hp:160,offset:[-5d,-0.8d,2d],width:1.5f,height:1.5f},aileron-l:{max-hp:160,offset:[5d,-0.8d,2d],width:1.5f,height:1.5f}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {elevator-r:{max-hp:140,offset:[-2d,-0.6d,-6.3d],width:1f,height:1f},elevator-l:{max-hp:140,offset:[2d,-0.6d,-6.3d],width:1f,height:1f}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {radder:{max-hp:150,offset:[0d,0.5d,-5.7d],width:1f,height:1f}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {cockpit:{offset:[0d,0d,3.5d],width:0.5f,height:0.5f}}
data modify storage voxel-planes:plane mosquitobmk16.plane-data.hitbox merge value {body:{max-hp:180,offset:[0d,-1.5d,0d],width:1.5f,height:1.5f}}


#デフォルト爆弾データセット
data modify storage voxel-planes:weapon mosquitobmk16.base.bomb.data set value {name:bomb,type:bomb,max-ammunition:0,current-ammunition:0,max-reload:600,current-reload:0,bombs:[]}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb set value [{kind:500lb,type:normal,offset:[-0.3d,0d,1d],damage:1100,weight:227,cmd:132}]
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[-0.3d,0d,2.8d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,0d,1d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.500lb append value {kind:500lb,type:normal,offset:[0.3d,0d,2.8d],damage:1100,weight:227,cmd:132}
data modify storage voxel-planes:weapon mosquitobmk16.additional.4000lb set value [{kind:4000lb,type:normal,offset:[0d,0d,1d],damage:9080,weight:1816,cmd:25}]

#デフォルトロケット弾データセット
